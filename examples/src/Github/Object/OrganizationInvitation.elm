-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.OrganizationInvitation exposing (..)

import Github.Enum.OrganizationInvitationRole
import Github.Enum.OrganizationInvitationType
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.OrganizationInvitation
selection constructor =
    Object.selection constructor


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.OrganizationInvitation
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


{-| The email address of the user invited to the organization.
-}
email : Field (Maybe String) Github.Object.OrganizationInvitation
email =
    Object.fieldDecoder "email" [] (Decode.string |> Decode.maybe)


id : Field Github.Scalar.Id Github.Object.OrganizationInvitation
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The type of invitation that was sent (e.g. email, user).
-}
invitationType : Field Github.Enum.OrganizationInvitationType.OrganizationInvitationType Github.Object.OrganizationInvitation
invitationType =
    Object.fieldDecoder "invitationType" [] Github.Enum.OrganizationInvitationType.decoder


{-| The user who was invited to the organization.
-}
invitee : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.OrganizationInvitation
invitee object =
    Object.selectionField "invitee" [] object (identity >> Decode.maybe)


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.OrganizationInvitation
inviter object =
    Object.selectionField "inviter" [] object identity


{-| The organization the invite is for
-}
organization : SelectionSet decodesTo Github.Object.Organization -> Field decodesTo Github.Object.OrganizationInvitation
organization object =
    Object.selectionField "organization" [] object identity


{-| The user's pending role in the organization (e.g. member, owner).
-}
role : Field Github.Enum.OrganizationInvitationRole.OrganizationInvitationRole Github.Object.OrganizationInvitation
role =
    Object.fieldDecoder "role" [] Github.Enum.OrganizationInvitationRole.decoder
