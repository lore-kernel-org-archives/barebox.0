Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFxe5-0007F1-AS
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 05:57:51 +0000
Received: from adelgunde.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe68:75ba] helo=adelgunde.localnet)
 by metis.ext.pengutronix.de with esmtps (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <mpa@pengutronix.de>) id 1bFxdi-00012r-4L
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 07:57:22 +0200
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 23 Jun 2016 07:57:21 +0200
Message-ID: <1887406.YxoyauxcWv@adelgunde>
In-Reply-To: <1466154875-3080-1-git-send-email-mpa@pengutronix.de>
References: <1466154875-3080-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7907783620467202609=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] state: Refactor state framework
To: barebox@lists.infradead.org


--===============7907783620467202609==
Content-Type: multipart/signed; boundary="nextPart1714189.4ifdhD8e60"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart1714189.4ifdhD8e60
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi,

On Friday 17 June 2016 11:14:34 Markus Pargmann wrote:
> The state framework grew organically over the time. Unfortunately the=

> architecture and abstractions disappeared during this period.
>=20
> This patch refactors the framework to recreate the abstractions. The
> main focus was the backend with its storage. The main use-case was to=

> offer better NAND support with less erase cycles and interchangeable
> data formats (dtb,raw).
>=20
> The general architecture now has a backend which consists of a data
> format and storage. The storage consists of multiple storage buckets
> each holding exactly one copy of the state data. A data format descri=
bes
> a data serialization for the state framework. This can be either dtb =
or
> raw. A storage bucket is a storage location which is used to store an=
y
> data. There is a (new) circular type which writes changes behind the
> last written data and therefore reduces the number of erases. The oth=
er
> type is a direct bucket which writes directly to a storage offset for=

> all non-erase storage.
>=20
> Furthermore this patch splits up all classes into different files in =
a
> subdirectory.
>=20
> This is currently all in one patch as I can't see a good way to split=

> the changes up without having a non-working state framework in betwee=
n.

We discovered some small bugs in this. I will send a new version.

Best Regards,

Markus

>=20
> The following diagram shows the new architecture roughly:
>=20
>            .----------.
>            |  state   |
>            '----------'
>                  |
>                  |
>                  v
>   .----------------------------.
>   |       state_backend        |
>   |----------------------------|
>   | + state_load(*state);      |
>   | + state_save(*state);      |
>   | + state_backend_init(...); |
>   |                            |
>   |                            |
>   '----------------------------'
>     |            |                   The format describes
>     |            |                   how the state data
>     |            '------------->     is serialized
>     |   .--------------------------------------------.
>     |   |      state_backend_format <INTERFACE>      |
>     |   |--------------------------------------------|
>     |   | + verify(*format, magic, *buf, len);       |
>     |   | + pack(*format, *state, **buf, len);       |
>     |   | + unpack(*format, *state, *buf, len);      |
>     |   | + get_packed_len(*format, *state);         |
>     |   | + free(*format);                           |
>     |   '--------------------------------------------'
>     |              ^                      ^
>     |              *                      *
>     |              *                      *
>     |   .--------------------. .--------------------.
>     |   | backend_format_dtb | | backend_format_raw |
>     |   '--------------------' '--------------------'
>     |
>     |
>     |
>     v
> .----------------------------------------------------------.
> |                  state_backend_storage                   |
> |----------------------------------------------------------|
> | + init(...);                                             |
> | + free(*storage);                                        |
> | + read(*storage, *format, magic, **buf, *len, len_hint); |
> | + write(*storage, *buf, len);                            |
> | + restore_consistency(*storage, *buf, len);              |
> '----------------------------------------------------------'
>                               |
>      The backend storage is responsible to manage multiple
>      data copies and distribute them onto several buckets.
>      Read data is verified against the given format to
>      ensure that the read data is correct.
>                               |
>                               |
>                               |
>                               |
>                               |
>                               v
>         .------------------------------------------.
>         | state_backend_storage_bucket <INTERFACE> |
>         |------------------------------------------|
>         | + init(*bucket);                         |
>         | + write(*bucket, *buf, len);             |
>         | + read(*bucket, **buf, len_hint);        |
>         | + free(*bucket);                         |
>         '------------------------------------------'
>                       ^         ^
>                      *           *
>                     *             *
>  A storage bucket represents exactly one data copy at one
>  data location. A circular bucket writes any new data to
>  the end of the bucket (for reduced erases on NAND). A
>  direct bucket directly writes at one location.
>                *                       *
>               *                         *
>              *                           *
>  .-----------------------.  .-------------------------.
>  | backend_bucket_direct |  | backend_bucket_circular |
>  '-----------------------'  '-------------------------'
>=20
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  common/Makefile                        |    2 +-
>  common/state.c                         | 1720 ----------------------=
=2D---------
>  common/state/Makefile                  |    8 +
>  common/state/backend.c                 |  209 ++++
>  common/state/backend_bucket_circular.c |  580 +++++++++++
>  common/state/backend_bucket_direct.c   |  180 ++++
>  common/state/backend_format_dtb.c      |  150 +++
>  common/state/backend_format_raw.c      |  327 ++++++
>  common/state/backend_storage.c         |  470 +++++++++
>  common/state/state.c                   |  564 +++++++++++
>  common/state/state.h                   |  266 +++++
>  common/state/state_variables.c         |  493 +++++++++
>  drivers/misc/state.c                   |   64 +-
>  include/state.h                        |    4 +-
>  14 files changed, 3252 insertions(+), 1785 deletions(-)
>  delete mode 100644 common/state.c
>  create mode 100644 common/state/Makefile
>  create mode 100644 common/state/backend.c
>  create mode 100644 common/state/backend_bucket_circular.c
>  create mode 100644 common/state/backend_bucket_direct.c
>  create mode 100644 common/state/backend_format_dtb.c
>  create mode 100644 common/state/backend_format_raw.c
>  create mode 100644 common/state/backend_storage.c
>  create mode 100644 common/state/state.c
>  create mode 100644 common/state/state.h
>  create mode 100644 common/state/state_variables.c
>=20
> diff --git a/common/Makefile b/common/Makefile
> index 99681e21215b..17fcb5f24a04 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -44,7 +44,7 @@ obj-$(CONFIG_POLLER)=09=09+=3D poller.o
>  obj-$(CONFIG_RESET_SOURCE)=09+=3D reset_source.o
>  obj-$(CONFIG_SHELL_HUSH)=09+=3D hush.o
>  obj-$(CONFIG_SHELL_SIMPLE)=09+=3D parser.o
> -obj-$(CONFIG_STATE)=09=09+=3D state.o
> +obj-$(CONFIG_STATE)=09=09+=3D state/
>  obj-$(CONFIG_RATP)=09=09+=3D ratp.o
>  obj-$(CONFIG_UIMAGE)=09=09+=3D image.o uimage.o
>  obj-$(CONFIG_FITIMAGE)=09=09+=3D image-fit.o
> diff --git a/common/state.c b/common/state.c
> deleted file mode 100644
> index 87afff305661..000000000000
> --- a/common/state.c
> +++ /dev/null
> @@ -1,1720 +0,0 @@
> -/*
> - * Copyright (C) 2012-2014 Pengutronix, Jan Luebbe <j.luebbe@pengutr=
onix.de>
> - * Copyright (C) 2013-2014 Pengutronix, Sascha Hauer <s.hauer@pengut=
ronix.de>
> - * Copyright (C) 2015 Pengutronix, Marc Kleine-Budde <mkl@pengutroni=
x.de>
> - *
> - * This program is free software; you can redistribute it and/or mod=
ify
> - * it under the terms of the GNU General Public License as published=
 by
> - * the Free Software Foundation; either version 2 of the License, or=

> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - */
> -
> -#include <common.h>
> -#include <digest.h>
> -#include <environment.h>
> -#include <errno.h>
> -#include <fcntl.h>
> -#include <fs.h>
> -#include <crc.h>
> -#include <init.h>
> -#include <ioctl.h>
> -#include <libbb.h>
> -#include <libfile.h>
> -#include <malloc.h>
> -#include <net.h>
> -#include <state.h>
> -#include <xfuncs.h>
> -
> -#include <crypto/keystore.h>
> -
> -#include <linux/mtd/mtd-abi.h>
> -#include <linux/mtd/mtd.h>
> -#include <linux/list.h>
> -#include <linux/err.h>
> -
> -#include <asm/unaligned.h>
> -
> -#define RAW_BACKEND_COPIES 2
> -
> -struct state_backend;
> -
> -struct state {
> -=09struct device_d dev;
> -=09struct device_node *root;
> -=09struct list_head variables;
> -=09const char *name;
> -=09struct list_head list;
> -=09struct state_backend *backend;
> -=09uint32_t magic;
> -=09unsigned int dirty;
> -};
> -
> -struct state_backend {
> -=09int (*save)(struct state_backend *backend, struct state *state);
> -=09const char *name;
> -=09const char *of_path;
> -=09const char *path;
> -=09struct digest *digest;
> -};
> -
> -enum state_variable_type {
> -=09STATE_TYPE_INVALID =3D 0,
> -=09STATE_TYPE_ENUM,
> -=09STATE_TYPE_U8,
> -=09STATE_TYPE_U32,
> -=09STATE_TYPE_S32,
> -=09STATE_TYPE_MAC,
> -=09STATE_TYPE_STRING,
> -};
> -
> -/* instance of a single variable */
> -struct state_variable {
> -=09enum state_variable_type type;
> -=09struct list_head list;
> -=09const char *name;
> -=09unsigned int start;
> -=09unsigned int size;
> -=09void *raw;
> -};
> -
> -enum state_convert {
> -=09STATE_CONVERT_FROM_NODE,
> -=09STATE_CONVERT_FROM_NODE_CREATE,
> -=09STATE_CONVERT_TO_NODE,
> -=09STATE_CONVERT_FIXUP,
> -};
> -
> -/* A variable type (uint32, enum32) */
> -struct variable_type {
> -=09enum state_variable_type type;
> -=09const char *type_name;
> -=09struct list_head list;
> -=09int (*export)(struct state_variable *, struct device_node *,
> -=09=09=09enum state_convert);
> -=09int (*import)(struct state_variable *, struct device_node *);
> -=09struct state_variable *(*create)(struct state *state,
> -=09=09=09const char *name, struct device_node *);
> -};
> -
> -/* list of all registered state instances */
> -static LIST_HEAD(state_list);
> -
> -static int state_set_dirty(struct param_d *p, void *priv)
> -{
> -=09struct state *state =3D priv;
> -
> -=09state->dirty =3D 1;
> -
> -=09return 0;
> -}
> -
> -/*
> - *  uint32
> - */
> -struct state_uint32 {
> -=09struct state_variable var;
> -=09struct param_d *param;
> -=09struct state *state;
> -=09uint32_t value;
> -=09uint32_t value_default;
> -};
> -
> -static int state_var_compare(struct list_head *a, struct list_head *=
b)
> -{
> -=09struct state_variable *va =3D list_entry(a, struct state_variable=
, list);
> -=09struct state_variable *vb =3D list_entry(b, struct state_variable=
, list);
> -
> -=09return va->start < vb->start ? -1 : 1;
> -}
> -
> -static void state_add_var(struct state *state, struct state_variable=
 *var)
> -{
> -=09list_add_sort(&var->list, &state->variables, state_var_compare);
> -}
> -
> -static inline struct state_uint32 *to_state_uint32(struct state_vari=
able *s)
> -{
> -=09return container_of(s, struct state_uint32, var);
> -}
> -
> -static int state_uint32_export(struct state_variable *var,
> -=09=09struct device_node *node, enum state_convert conv)
> -{
> -=09struct state_uint32 *su32 =3D to_state_uint32(var);
> -=09int ret;
> -
> -=09if (su32->value_default) {
> -=09=09ret =3D of_property_write_u32(node, "default",
> -=09=09=09=09=09    su32->value_default);
> -=09=09if (ret)
> -=09=09=09return ret;
> -=09}
> -
> -=09if (conv =3D=3D STATE_CONVERT_FIXUP)
> -=09=09return 0;
> -
> -=09return of_property_write_u32(node, "value", su32->value);
> -}
> -
> -static int state_uint32_import(struct state_variable *sv,
> -=09=09=09       struct device_node *node)
> -{
> -=09struct state_uint32 *su32 =3D to_state_uint32(sv);
> -
> -=09of_property_read_u32(node, "default", &su32->value_default);
> -=09if (of_property_read_u32(node, "value", &su32->value))
> -=09=09su32->value =3D su32->value_default;
> -
> -=09return 0;
> -}
> -
> -static int state_uint8_set(struct param_d *p, void *priv)
> -{
> -=09struct state_uint32 *su32 =3D priv;
> -=09struct state *state =3D su32->state;
> -
> -=09if (su32->value > 255)
> -=09=09return -ERANGE;
> -
> -=09return state_set_dirty(p, state);
> -}
> -
> -static struct state_variable *state_uint8_create(struct state *state=
,
> -=09=09const char *name, struct device_node *node)
> -{
> -=09struct state_uint32 *su32;
> -=09struct param_d *param;
> -
> -=09su32 =3D xzalloc(sizeof(*su32));
> -
> -=09param =3D dev_add_param_int(&state->dev, name, state_uint8_set,
> -=09=09=09=09  NULL, &su32->value, "%u", su32);
> -=09if (IS_ERR(param)) {
> -=09=09free(su32);
> -=09=09return ERR_CAST(param);
> -=09}
> -
> -=09su32->param =3D param;
> -=09su32->var.size =3D sizeof(uint8_t);
> -#ifdef __LITTLE_ENDIAN
> -=09su32->var.raw =3D &su32->value;
> -#else
> -=09su32->var.raw =3D &su32->value + 3;
> -#endif
> -=09su32->state =3D state;
> -
> -=09return &su32->var;
> -}
> -
> -static struct state_variable *state_int32_create(struct state *state=
,
> -=09=09const char *name, struct device_node *node, const char *format=
)
> -{
> -=09struct state_uint32 *su32;
> -=09struct param_d *param;
> -
> -=09su32 =3D xzalloc(sizeof(*su32));
> -
> -=09param =3D dev_add_param_int(&state->dev, name, state_set_dirty,
> -=09=09=09=09  NULL, &su32->value, format, state);
> -=09if (IS_ERR(param)) {
> -=09=09free(su32);
> -=09=09return ERR_CAST(param);
> -=09}
> -
> -=09su32->param =3D param;
> -=09su32->var.size =3D sizeof(uint32_t);
> -=09su32->var.raw =3D &su32->value;
> -
> -=09return &su32->var;
> -}
> -
> -static struct state_variable *state_uint32_create(struct state *stat=
e,
> -=09=09const char *name, struct device_node *node)
> -{
> -=09return state_int32_create(state, name, node, "%u");
> -}
> -
> -static struct state_variable *state_sint32_create(struct state *stat=
e,
> -=09=09const char *name, struct device_node *node)
> -{
> -=09return state_int32_create(state, name, node, "%d");
> -}
> -
> -/*
> - *  enum32
> - */
> -struct state_enum32 {
> -=09struct state_variable var;
> -=09struct param_d *param;
> -=09uint32_t value;
> -=09uint32_t value_default;
> -=09const char **names;
> -=09int num_names;
> -};
> -
> -static inline struct state_enum32 *to_state_enum32(struct state_vari=
able *s)
> -{
> -=09return container_of(s, struct state_enum32, var);
> -}
> -
> -static int state_enum32_export(struct state_variable *var,
> -=09=09struct device_node *node, enum state_convert conv)
> -{
> -=09struct state_enum32 *enum32 =3D to_state_enum32(var);
> -=09int ret, i, len;
> -=09char *prop, *str;
> -
> -=09if (enum32->value_default) {
> -=09=09ret =3D of_property_write_u32(node, "default",
> -=09=09=09=09=09    enum32->value_default);
> -=09=09if (ret)
> -=09=09=09return ret;
> -=09}
> -
> -=09len =3D 0;
> -
> -=09for (i =3D 0; i < enum32->num_names; i++)
> -=09=09len +=3D strlen(enum32->names[i]) + 1;
> -
> -=09prop =3D xzalloc(len);
> -=09str =3D prop;
> -
> -=09for (i =3D 0; i < enum32->num_names; i++)
> -=09=09str +=3D sprintf(str, "%s", enum32->names[i]) + 1;
> -
> -=09ret =3D of_set_property(node, "names", prop, len, 1);
> -
> -=09free(prop);
> -
> -=09if (conv =3D=3D STATE_CONVERT_FIXUP)
> -=09=09return 0;
> -
> -=09ret =3D of_property_write_u32(node, "value", enum32->value);
> -=09if (ret)
> -=09=09return ret;
> -
> -=09return ret;
> -}
> -
> -static int state_enum32_import(struct state_variable *sv,
> -=09=09=09       struct device_node *node)
> -{
> -=09struct state_enum32 *enum32 =3D to_state_enum32(sv);
> -=09int len;
> -=09const __be32 *value, *value_default;
> -
> -=09value =3D of_get_property(node, "value", &len);
> -=09if (value && len !=3D sizeof(uint32_t))
> -=09=09return -EINVAL;
> -
> -=09value_default =3D of_get_property(node, "default", &len);
> -=09if (value_default && len !=3D sizeof(uint32_t))
> -=09=09return -EINVAL;
> -
> -=09if (value_default)
> -=09=09enum32->value_default =3D be32_to_cpu(*value_default);
> -=09if (value)
> -=09=09enum32->value =3D be32_to_cpu(*value);
> -=09else
> -=09=09enum32->value =3D enum32->value_default;
> -
> -=09return 0;
> -}
> -
> -static struct state_variable *state_enum32_create(struct state *stat=
e,
> -=09=09const char *name, struct device_node *node)
> -{
> -=09struct state_enum32 *enum32;
> -=09int ret, i, num_names;
> -
> -=09enum32 =3D xzalloc(sizeof(*enum32));
> -
> -=09num_names =3D of_property_count_strings(node, "names");
> -=09if (num_names < 0) {
> -=09=09dev_err(&state->dev, "enum32 node without \"names\" property\n=
");
> -=09=09return ERR_PTR(-EINVAL);
> -=09}
> -
> -=09enum32->names =3D xzalloc(sizeof(char *) * num_names);
> -=09enum32->num_names =3D num_names;
> -=09enum32->var.size =3D sizeof(uint32_t);
> -=09enum32->var.raw =3D &enum32->value;
> -
> -=09for (i =3D 0; i < num_names; i++) {
> -=09=09const char *name;
> -
> -=09=09ret =3D of_property_read_string_index(node, "names", i, &name)=
;
> -=09=09if (ret)
> -=09=09=09goto out;
> -=09=09enum32->names[i] =3D xstrdup(name);
> -=09}
> -
> -=09enum32->param =3D dev_add_param_enum(&state->dev, name, state_set=
_dirty,
> -=09=09=09NULL, &enum32->value, enum32->names, num_names, state);
> -=09if (IS_ERR(enum32->param)) {
> -=09=09ret =3D PTR_ERR(enum32->param);
> -=09=09goto out;
> -=09}
> -
> -=09return &enum32->var;
> -out:
> -=09for (i--; i >=3D 0; i--)
> -=09=09free((char *)enum32->names[i]);
> -=09free(enum32->names);
> -=09free(enum32);
> -=09return ERR_PTR(ret);
> -}
> -
> -/*
> - *  MAC address
> - */
> -struct state_mac {
> -=09struct state_variable var;
> -=09struct param_d *param;
> -=09uint8_t value[6];
> -=09uint8_t value_default[6];
> -};
> -
> -static inline struct state_mac *to_state_mac(struct state_variable *=
s)
> -{
> -=09return container_of(s, struct state_mac, var);
> -}
> -
> -static int state_mac_export(struct state_variable *var,
> -=09=09struct device_node *node, enum state_convert conv)
> -{
> -=09struct state_mac *mac =3D to_state_mac(var);
> -=09int ret;
> -
> -=09if (!is_zero_ether_addr(mac->value_default)) {
> -=09=09ret =3D of_property_write_u8_array(node, "default", mac->value=
_default,
> -=09=09=09=09=09=09 ARRAY_SIZE(mac->value_default));
> -=09=09if (ret)
> -=09=09=09return ret;
> -=09}
> -
> -=09if (conv =3D=3D STATE_CONVERT_FIXUP)
> -=09=09return 0;
> -
> -=09return of_property_write_u8_array(node, "value", mac->value,
> -=09=09=09=09=09  ARRAY_SIZE(mac->value));
> -}
> -
> -static int state_mac_import(struct state_variable *sv,
> -=09=09=09    struct device_node *node)
> -{
> -=09struct state_mac *mac =3D to_state_mac(sv);
> -
> -=09of_property_read_u8_array(node, "default", mac->value_default,
> -=09=09=09=09  ARRAY_SIZE(mac->value_default));
> -=09if (of_property_read_u8_array(node, "value", mac->value,
> -=09=09=09=09      ARRAY_SIZE(mac->value)))
> -=09=09memcpy(mac->value, mac->value_default, ARRAY_SIZE(mac->value))=
;
> -
> -=09return 0;
> -}
> -
> -static struct state_variable *state_mac_create(struct state *state,
> -=09=09const char *name, struct device_node *node)
> -{
> -=09struct state_mac *mac;
> -=09int ret;
> -
> -=09mac =3D xzalloc(sizeof(*mac));
> -
> -=09mac->var.size =3D ARRAY_SIZE(mac->value);
> -=09mac->var.raw =3D mac->value;
> -
> -=09mac->param =3D dev_add_param_mac(&state->dev, name, state_set_dir=
ty,
> -=09=09=09NULL, mac->value, state);
> -=09if (IS_ERR(mac->param)) {
> -=09=09ret =3D PTR_ERR(mac->param);
> -=09=09goto out;
> -=09}
> -
> -=09return &mac->var;
> -out:
> -=09free(mac);
> -=09return ERR_PTR(ret);
> -}
> -
> -/*
> - *  string
> - */
> -struct state_string {
> -=09struct state_variable var;
> -=09struct param_d *param;
> -=09struct state *state;
> -=09char *value;
> -=09const char *value_default;
> -=09char raw[];
> -};
> -
> -static inline struct state_string *to_state_string(struct state_vari=
able *s)
> -{
> -=09return container_of(s, struct state_string, var);
> -}
> -
> -static int state_string_export(struct state_variable *var,
> -=09=09struct device_node *node, enum state_convert conv)
> -{
> -=09struct state_string *string =3D to_state_string(var);
> -=09int ret =3D 0;
> -
> -=09if (string->value_default) {
> -=09=09ret =3D of_set_property(node, "default", string->value_default=
,
> -=09=09=09=09      strlen(string->value_default) + 1, 1);
> -
> -=09=09if (ret)
> -=09=09=09return ret;
> -=09}
> -
> -=09if (conv =3D=3D STATE_CONVERT_FIXUP)
> -=09=09return 0;
> -
> -=09if (string->value)
> -=09=09ret =3D of_set_property(node, "value", string->value,
> -=09=09=09=09      strlen(string->value) + 1, 1);
> -
> -=09return ret;
> -}
> -
> -static int state_string_copy_to_raw(struct state_string *string,
> -=09=09=09=09    const char *src)
> -{
> -=09size_t len;
> -
> -=09len =3D strlen(src);
> -=09if (len > string->var.size)
> -=09=09return -EILSEQ;
> -
> -=09/* copy string and clear remaining contents of buffer */
> -=09memcpy(string->raw, src, len);
> -=09memset(string->raw + len, 0x0, string->var.size - len);
> -
> -=09return 0;
> -}
> -
> -static int state_string_import(struct state_variable *sv,
> -=09=09=09       struct device_node *node)
> -{
> -=09struct state_string *string =3D to_state_string(sv);
> -=09const char *value =3D NULL;
> -=09size_t len;
> -=09int ret;
> -
> -=09of_property_read_string(node, "default", &string->value_default);=

> -=09if (string->value_default) {
> -=09=09len =3D strlen(string->value_default);
> -=09=09if (len > string->var.size)
> -=09=09=09return -EILSEQ;
> -=09}
> -
> -=09ret =3D of_property_read_string(node, "value", &value);
> -=09if (ret)
> -=09=09value =3D string->value_default;
> -
> -=09if (value)
> -=09=09return state_string_copy_to_raw(string, value);
> -
> -=09return 0;
> -}
> -
> -static int state_string_set(struct param_d *p, void *priv)
> -{
> -=09struct state_string *string =3D priv;
> -=09struct state *state =3D string->state;
> -=09int ret;
> -
> -=09ret =3D state_string_copy_to_raw(string, string->value);
> -=09if (ret)
> -=09=09return ret;
> -
> -=09return state_set_dirty(p, state);
> -}
> -
> -static int state_string_get(struct param_d *p, void *priv)
> -{
> -=09struct state_string *string =3D priv;
> -
> -=09free(string->value);
> -=09if (string->raw[0])
> -=09=09string->value =3D xstrndup(string->raw, string->var.size);
> -=09else
> -=09=09string->value =3D xstrdup("");
> -
> -=09return 0;
> -}
> -
> -static struct state_variable *state_string_create(struct state *stat=
e,
> -=09=09const char *name, struct device_node *node)
> -{
> -=09struct state_string *string;
> -=09u32 start_size[2];
> -=09int ret;
> -
> -=09ret =3D of_property_read_u32_array(node, "reg", start_size,
> -=09=09=09=09=09 ARRAY_SIZE(start_size));
> -=09if (ret) {
> -=09=09dev_err(&state->dev,
> -=09=09=09"%s: reg property not found\n", name);
> -=09=09return ERR_PTR(ret);
> -=09}
> -
> -=09/* limit to arbitrary len of 4k */
> -=09if (start_size[1] > 4096)
> -=09=09return ERR_PTR(-EILSEQ);
> -
> -=09string =3D xzalloc(sizeof(*string) + start_size[1]);
> -=09string->var.size =3D start_size[1];
> -=09string->var.raw =3D &string->raw;
> -=09string->state =3D state;
> -
> -=09string->param =3D dev_add_param_string(&state->dev, name, state_s=
tring_set,
> -=09=09=09=09=09     state_string_get, &string->value, string);
> -=09if (IS_ERR(string->param)) {
> -=09=09ret =3D PTR_ERR(string->param);
> -=09=09goto out;
> -=09}
> -
> -=09return &string->var;
> -out:
> -=09free(string);
> -=09return ERR_PTR(ret);
> -}
> -
> -static struct variable_type types[] =3D  {
> -=09{
> -=09=09.type =3D STATE_TYPE_U8,
> -=09=09.type_name =3D "uint8",
> -=09=09.export =3D state_uint32_export,
> -=09=09.import =3D state_uint32_import,
> -=09=09.create =3D state_uint8_create,
> -=09}, {
> -=09=09.type =3D STATE_TYPE_U32,
> -=09=09.type_name =3D "uint32",
> -=09=09.export =3D state_uint32_export,
> -=09=09.import =3D state_uint32_import,
> -=09=09.create =3D state_uint32_create,
> -=09}, {
> -=09=09.type =3D STATE_TYPE_ENUM,
> -=09=09.type_name =3D "enum32",
> -=09=09.export =3D state_enum32_export,
> -=09=09.import =3D state_enum32_import,
> -=09=09.create =3D state_enum32_create,
> -=09}, {
> -=09=09.type =3D STATE_TYPE_MAC,
> -=09=09.type_name =3D "mac",
> -=09=09.export =3D state_mac_export,
> -=09=09.import =3D state_mac_import,
> -=09=09.create =3D state_mac_create,
> -=09}, {
> -=09=09.type =3D STATE_TYPE_STRING,
> -=09=09.type_name =3D "string",
> -=09=09.export =3D state_string_export,
> -=09=09.import =3D state_string_import,
> -=09=09.create =3D state_string_create,
> -=09}, {
> -=09=09.type =3D STATE_TYPE_S32,
> -=09=09.type_name =3D "int32",
> -=09=09.export =3D state_uint32_export,
> -=09=09.import =3D state_uint32_import,
> -=09=09.create =3D state_sint32_create,
> -=09},
> -};
> -
> -static struct variable_type *state_find_type_by_name(const char *nam=
e)
> -{
> -=09int i;
> -
> -=09for (i =3D 0; i < ARRAY_SIZE(types); i++) {
> -=09=09if (!strcmp(name, types[i].type_name)) {
> -=09=09=09return &types[i];
> -=09=09}
> -=09}
> -
> -=09return NULL;
> -}
> -
> -/*
> - * Generic state functions
> - */
> -
> -static struct state *state_new(const char *name)
> -{
> -=09struct state *state;
> -=09int ret;
> -
> -=09state =3D xzalloc(sizeof(*state));
> -=09safe_strncpy(state->dev.name, name, MAX_DRIVER_NAME);
> -=09state->name =3D state->dev.name;
> -=09state->dev.id =3D DEVICE_ID_SINGLE;
> -=09INIT_LIST_HEAD(&state->variables);
> -
> -=09ret =3D register_device(&state->dev);
> -=09if (ret) {
> -=09=09free(state);
> -=09=09return ERR_PTR(ret);
> -=09}
> -
> -=09state->dirty =3D 1;
> -=09dev_add_param_bool(&state->dev, "dirty", NULL, NULL, &state->dirt=
y,
> -=09=09=09   NULL);
> -
> -=09list_add_tail(&state->list, &state_list);
> -
> -=09return state;
> -}
> -
> -static struct state_variable *state_find_var(struct state *state,
> -=09=09=09=09=09     const char *name)
> -{
> -=09struct state_variable *sv;
> -
> -=09list_for_each_entry(sv, &state->variables, list) {
> -=09=09if (!strcmp(sv->name, name))
> -=09=09=09return sv;
> -=09}
> -
> -=09return ERR_PTR(-ENOENT);
> -}
> -
> -static int state_convert_node_variable(struct state *state,
> -=09=09struct device_node *node, struct device_node *parent,
> -=09=09const char *parent_name, enum state_convert conv)
> -{
> -=09const struct variable_type *vtype;
> -=09struct device_node *child;
> -=09struct device_node *new_node =3D NULL;
> -=09struct state_variable *sv;
> -=09const char *type_name;
> -=09char *short_name, *name, *indexs;
> -=09unsigned int start_size[2];
> -=09int ret;
> -
> -=09/* strip trailing @<ADDRESS> */
> -=09short_name =3D xstrdup(node->name);
> -=09indexs =3D strchr(short_name, '@');
> -=09if (indexs)
> -=09=09*indexs =3D 0;
> -
> -=09/* construct full name */
> -=09name =3D basprintf("%s%s%s", parent_name, parent_name[0] ? "." : =
"",
> -=09=09=09   short_name);
> -=09free(short_name);
> -
> -=09if ((conv =3D=3D STATE_CONVERT_TO_NODE) ||
> -=09    (conv =3D=3D STATE_CONVERT_FIXUP))
> -=09=09new_node =3D of_new_node(parent, node->name);
> -
> -=09for_each_child_of_node(node, child) {
> -=09=09ret =3D state_convert_node_variable(state, child, new_node, na=
me,
> -=09=09=09=09=09=09  conv);
> -=09=09if (ret)
> -=09=09=09goto out_free;
> -=09}
> -
> -=09/* parents are allowed to have no type */
> -=09ret =3D of_property_read_string(node, "type", &type_name);
> -=09if (!list_empty(&node->children) && ret =3D=3D -EINVAL) {
> -=09=09if (conv =3D=3D STATE_CONVERT_FIXUP) {
> -=09=09=09ret =3D of_property_write_u32(new_node, "#address-cells", 1=
);
> -=09=09=09if (ret)
> -=09=09=09=09goto out_free;
> -
> -=09=09=09ret =3D of_property_write_u32(new_node, "#size-cells", 1);
> -=09=09=09if (ret)
> -=09=09=09=09goto out_free;
> -=09=09}
> -=09=09ret =3D 0;
> -=09=09goto out_free;
> -=09} else if (ret) {
> -=09=09goto out_free;
> -=09}
> -
> -=09vtype =3D state_find_type_by_name(type_name);
> -=09if (!vtype) {
> -=09=09dev_err(&state->dev, "unkown type: %s in %s\n", type_name,
> -=09=09=09node->full_name);
> -=09=09ret =3D -ENOENT;
> -=09=09goto out_free;
> -=09}
> -
> -=09if (conv =3D=3D STATE_CONVERT_FROM_NODE_CREATE) {
> -=09=09sv =3D vtype->create(state, name, node);
> -=09=09if (IS_ERR(sv)) {
> -=09=09=09ret =3D PTR_ERR(sv);
> -=09=09=09dev_err(&state->dev, "failed to create %s: %s\n",
> -=09=09=09=09name, strerror(-ret));
> -=09=09=09goto out_free;
> -=09=09}
> -
> -=09=09ret =3D of_property_read_u32_array(node, "reg", start_size,
> -=09=09=09=09=09=09 ARRAY_SIZE(start_size));
> -=09=09if (ret) {
> -=09=09=09dev_err(&state->dev,
> -=09=09=09=09"%s: reg property not found\n", name);
> -=09=09=09goto out_free;
> -=09=09}
> -
> -=09=09if (start_size[1] !=3D sv->size) {
> -=09=09=09dev_err(&state->dev,
> -=09=09=09=09"%s: size mismatch: type=3D%s(size=3D%u) size=3D%u\n",
> -=09=09=09=09name, type_name, sv->size, start_size[1]);
> -=09=09=09ret =3D -EOVERFLOW;
> -=09=09=09goto out_free;
> -=09=09}
> -
> -=09=09sv->name =3D name;
> -=09=09sv->start =3D start_size[0];
> -=09=09sv->type =3D vtype->type;
> -=09=09state_add_var(state, sv);
> -=09} else {
> -=09=09sv =3D state_find_var(state, name);
> -=09=09if (IS_ERR(sv)) {
> -=09=09=09/* we ignore this error */
> -=09=09=09dev_dbg(&state->dev,
> -=09=09=09=09"no such variable: %s: %s\n",
> -=09=09=09=09name, strerror(-ret));
> -=09=09=09ret =3D 0;
> -=09=09=09goto out_free;
> -=09=09}
> -=09=09free(name);
> -
> -=09=09if ((conv =3D=3D STATE_CONVERT_TO_NODE) ||
> -=09=09    (conv =3D=3D STATE_CONVERT_FIXUP)) {
> -=09=09=09ret =3D of_set_property(new_node, "type",
> -=09=09=09=09=09      vtype->type_name,
> -=09=09=09=09=09      strlen(vtype->type_name) + 1, 1);
> -=09=09=09if (ret)
> -=09=09=09=09goto out;
> -
> -=09=09=09start_size[0] =3D sv->start;
> -=09=09=09start_size[1] =3D sv->size;
> -=09=09=09ret =3D of_property_write_u32_array(new_node, "reg",
> -=09=09=09=09=09=09=09  start_size,
> -=09=09=09=09=09=09=09  ARRAY_SIZE(start_size));
> -=09=09=09if (ret)
> -=09=09=09=09goto out;
> -=09=09}
> -=09}
> -
> -=09if ((conv =3D=3D STATE_CONVERT_TO_NODE) ||
> -=09    (conv =3D=3D STATE_CONVERT_FIXUP))
> -=09=09ret =3D vtype->export(sv, new_node, conv);
> -=09else
> -=09=09ret =3D vtype->import(sv, node);
> -
> -=09if (ret)
> -=09=09goto out;
> -
> -=09return 0;
> -out_free:
> -=09free(name);
> -out:
> -=09return ret;
> -}
> -
> -static struct device_node *state_to_node(struct state *state, struct=
 device_node *parent,
> -=09=09=09=09=09 enum state_convert conv)
> -{
> -=09struct device_node *child;
> -=09struct device_node *root;
> -=09int ret;
> -
> -=09root =3D of_new_node(parent, state->root->name);
> -=09ret =3D of_property_write_u32(root, "magic", state->magic);
> -=09if (ret)
> -=09=09goto out;
> -
> -=09for_each_child_of_node(state->root, child) {
> -=09=09ret =3D state_convert_node_variable(state, child, root, "",
> -=09=09=09=09=09=09  conv);
> -=09=09if (ret)
> -=09=09=09goto out;
> -=09}
> -
> -=09return root;
> -out:
> -=09of_delete_node(root);
> -=09return ERR_PTR(ret);
> -}
> -
> -static int state_from_node(struct state *state, struct device_node *=
node,
> -=09=09=09   bool create)
> -{
> -=09struct device_node *child;
> -=09enum state_convert conv;
> -=09int ret;
> -=09uint32_t magic;
> -
> -=09ret =3D of_property_read_u32(node, "magic", &magic);
> -=09if (ret)
> -=09=09return ret;
> -
> -=09if (create) {
> -=09=09conv =3D STATE_CONVERT_FROM_NODE_CREATE;
> -=09=09state->root =3D node;
> -=09=09state->magic =3D magic;
> -=09} else {
> -=09=09conv =3D STATE_CONVERT_FROM_NODE;
> -=09=09if (state->magic && state->magic !=3D magic) {
> -=09=09=09dev_err(&state->dev,
> -=09=09=09=09=09"invalid magic 0x%08x, should be 0x%08x\n",
> -=09=09=09=09=09magic, state->magic);
> -=09=09=09return -EINVAL;
> -=09=09}
> -=09}
> -
> -=09for_each_child_of_node(node, child) {
> -=09=09ret =3D state_convert_node_variable(state, child, NULL, "", co=
nv);
> -=09=09if (ret)
> -=09=09=09return ret;
> -=09}
> -
> -=09/* check for overlapping variables */
> -=09if (create) {
> -=09=09const struct state_variable *sv;
> -
> -=09=09/* start with second entry */
> -=09=09sv =3D list_first_entry(&state->variables,
> -=09=09=09=09      struct state_variable, list);
> -
> -=09=09list_for_each_entry_continue(sv, &state->variables, list) {
> -=09=09=09const struct state_variable *last_sv;
> -
> -=09=09=09last_sv =3D list_last_entry(&sv->list,
> -=09=09=09=09=09=09  struct state_variable, list);
> -=09=09=09if ((last_sv->start + last_sv->size - 1) < sv->start)
> -=09=09=09=09continue;
> -
> -=09=09=09dev_err(&state->dev,
> -=09=09=09=09"ERROR: Conflicting variable position between: "
> -=09=09=09=09"%s (0x%02x..0x%02x) and %s (0x%02x..0x%02x)\n",
> -=09=09=09=09last_sv->name, last_sv->start,
> -=09=09=09=09last_sv->start + last_sv->size - 1,
> -=09=09=09=09sv->name, sv->start, sv->start + sv->size - 1);
> -
> -=09=09=09ret |=3D -EINVAL;
> -=09=09}
> -=09}
> -
> -=09return ret;
> -}
> -
> -static int of_state_fixup(struct device_node *root, void *ctx)
> -{
> -=09struct state *state =3D ctx;
> -=09const char *compatible =3D "barebox,state";
> -=09struct device_node *new_node, *node, *parent, *backend_node;
> -=09struct property *p;
> -=09int ret;
> -=09phandle phandle;
> -
> -=09node =3D of_find_node_by_path_from(root, state->root->full_name);=

> -=09if (node) {
> -=09=09/* replace existing node - it will be deleted later */
> -=09=09parent =3D node->parent;
> -=09} else {
> -=09=09char *of_path, *c;
> -
> -=09=09/* look for parent, remove last '/' from path */
> -=09=09of_path =3D xstrdup(state->root->full_name);
> -=09=09c =3D strrchr(of_path, '/');
> -=09=09if (!c)
> -=09=09=09return -ENODEV;
> -=09=09*c =3D '0';
> -=09=09parent =3D of_find_node_by_path(of_path);
> -=09=09if (!parent)
> -=09=09=09parent =3D root;
> -
> -=09=09free(of_path);
> -=09}
> -
> -=09/* serialize variable definitions */
> -=09new_node =3D state_to_node(state, parent, STATE_CONVERT_FIXUP);
> -=09if (IS_ERR(new_node))
> -=09=09return PTR_ERR(new_node);
> -
> -=09/* compatible */
> -=09p =3D of_new_property(new_node, "compatible", compatible,
> -=09=09=09    strlen(compatible) + 1);
> -=09if (!p) {
> -=09=09ret =3D -ENOMEM;
> -=09=09goto out;
> -=09}
> -
> -=09/* backend-type */
> -=09if (!state->backend) {
> -=09=09ret =3D -ENODEV;
> -=09=09goto out;
> -=09}
> -
> -=09p =3D of_new_property(new_node, "backend-type", state->backend->n=
ame,
> -=09=09=09    strlen(state->backend->name) + 1);
> -=09if (!p) {
> -=09=09ret =3D -ENOMEM;
> -=09=09goto out;
> -=09}
> -
> -=09/* backend phandle */
> -=09backend_node =3D of_find_node_by_path_from(root, state->backend->=
of_path);
> -=09if (!backend_node) {
> -=09=09ret =3D -ENODEV;
> -=09=09goto out;
> -=09}
> -
> -=09phandle =3D of_node_create_phandle(backend_node);
> -=09ret =3D of_property_write_u32(new_node, "backend", phandle);
> -=09if (ret)
> -=09=09goto out;
> -
> -=09if (state->backend->digest) {
> -=09=09p =3D of_new_property(new_node, "algo",
> -=09=09=09=09    digest_name(state->backend->digest),
> -=09=09=09=09    strlen(digest_name(state->backend->digest)) + 1);
> -=09=09if (!p) {
> -=09=09=09ret =3D -ENOMEM;
> -=09=09=09goto out;
> -=09=09}
> -=09}
> -
> -=09/* address-cells + size-cells */
> -=09ret =3D of_property_write_u32(new_node, "#address-cells", 1);
> -=09if (ret)
> -=09=09goto out;
> -
> -=09ret =3D of_property_write_u32(new_node, "#size-cells", 1);
> -=09if (ret)
> -=09=09goto out;
> -
> -=09/* delete existing node */
> -=09if (node)
> -=09=09of_delete_node(node);
> -
> -=09return 0;
> -
> - out:
> -=09dev_err(&state->dev, "error fixing up device tree with boot state=
\n");
> -=09of_delete_node(new_node);
> -=09return ret;
> -}
> -
> -void state_release(struct state *state)
> -{
> -=09of_unregister_fixup(of_state_fixup, state);
> -=09list_del(&state->list);
> -=09unregister_device(&state->dev);
> -=09free(state);
> -}
> -
> -/*
> - * state_new_from_node - create a new state instance from a device_n=
ode
> - *
> - * @name=09The name of the new state instance
> - * @node=09The device_node describing the new state instance
> - */
> -struct state *state_new_from_node(const char *name, struct device_no=
de *node)
> -{
> -=09struct state *state;
> -=09int ret;
> -
> -=09state =3D state_new(name);
> -=09if (IS_ERR(state))
> -=09=09return state;
> -
> -=09ret =3D state_from_node(state, node, 1);
> -=09if (ret) {
> -=09=09state_release(state);
> -=09=09return ERR_PTR(ret);
> -=09}
> -
> -=09ret =3D of_register_fixup(of_state_fixup, state);
> -=09if (ret) {
> -=09=09state_release(state);
> -=09=09return ERR_PTR(ret);
> -=09}
> -
> -=09return state;
> -}
> -
> -/*
> - * state_by_name - find a state instance by name
> - *
> - * @name=09The name of the state instance
> - */
> -struct state *state_by_name(const char *name)
> -{
> -=09struct state *state;
> -
> -=09list_for_each_entry(state, &state_list, list) {
> -=09=09if (!strcmp(name, state->name))
> -=09=09=09return state;
> -=09}
> -
> -=09return NULL;
> -}
> -
> -/*
> - * state_by_node - find a state instance by of node
> - *
> - * @node=09The of node of the state intance
> - */
> -struct state *state_by_node(const struct device_node *node)
> -{
> -=09struct state *state;
> -
> -=09list_for_each_entry(state, &state_list, list) {
> -=09=09if (state->root =3D=3D node)
> -=09=09=09return state;
> -=09}
> -
> -=09return NULL;
> -}
> -
> -int state_get_name(const struct state *state, char const **name)
> -{
> -=09*name =3D xstrdup(state->name);
> -
> -=09return 0;
> -}
> -
> -/*
> - * state_save - save a state to the backing store
> - *
> - * @state=09The state instance to save
> - */
> -int state_save(struct state *state)
> -{
> -=09int ret;
> -
> -=09if (!state->dirty)
> -=09=09return 0;
> -
> -=09if (!state->backend)
> -=09=09return -ENOSYS;
> -
> -=09ret =3D state->backend->save(state->backend, state);
> -=09if (ret)
> -=09=09return ret;
> -
> -=09state->dirty =3D 0;
> -
> -=09return 0;
> -}
> -
> -void state_info(void)
> -{
> -=09struct state *state;
> -
> -=09printf("registered state instances:\n");
> -
> -=09list_for_each_entry(state, &state_list, list) {
> -=09=09printf("%-20s ", state->name);
> -=09=09if (state->backend)
> -=09=09=09printf("(backend: %s, path: %s)\n",
> -=09=09=09       state->backend->name, state->backend->path);
> -=09=09else
> -=09=09=09printf("(no backend)\n");
> -=09}
> -}
> -
> -static int mtd_get_meminfo(const char *path, struct mtd_info_user *m=
eminfo)
> -{
> -=09int fd, ret;
> -
> -=09fd =3D open(path, O_RDONLY);
> -=09if (fd < 0)
> -=09=09return fd;
> -
> -=09ret =3D ioctl(fd, MEMGETINFO, meminfo);
> -
> -=09close(fd);
> -
> -=09return ret;
> -}
> -
> -/*
> - * DTB backend implementation
> - */
> -struct state_backend_dtb {
> -=09struct state_backend backend;
> -=09bool need_erase;
> -};
> -
> -static int state_backend_dtb_load(struct state_backend *backend,
> -=09=09=09=09  struct state *state)
> -{
> -=09struct device_node *root;
> -=09void *fdt;
> -=09int ret;
> -=09size_t len;
> -
> -=09fdt =3D read_file(backend->path, &len);
> -=09if (!fdt) {
> -=09=09dev_err(&state->dev, "cannot read %s\n", backend->path);
> -=09=09return -EINVAL;
> -=09}
> -
> -=09root =3D of_unflatten_dtb(fdt);
> -
> -=09free(fdt);
> -
> -=09if (IS_ERR(root))
> -=09=09return PTR_ERR(root);
> -
> -=09ret =3D state_from_node(state, root, 0);
> -
> -=09return ret;
> -}
> -
> -static int state_backend_dtb_save(struct state_backend *backend,
> -=09=09=09=09  struct state *state)
> -{
> -=09struct state_backend_dtb *backend_dtb =3D container_of(backend,
> -=09=09=09struct state_backend_dtb, backend);
> -=09int ret, fd;
> -=09struct device_node *root;
> -=09struct fdt_header *fdt;
> -
> -=09root =3D state_to_node(state, NULL, STATE_CONVERT_TO_NODE);
> -=09if (IS_ERR(root))
> -=09=09return PTR_ERR(root);
> -
> -=09fdt =3D of_flatten_dtb(root);
> -=09if (!fdt)
> -=09=09return -EINVAL;
> -
> -=09fd =3D open(backend->path, O_WRONLY);
> -=09if (fd < 0) {
> -=09=09ret =3D fd;
> -=09=09goto out;
> -=09}
> -
> -=09if (backend_dtb->need_erase) {
> -=09=09ret =3D erase(fd, fdt32_to_cpu(fdt->totalsize), 0);
> -=09=09if (ret) {
> -=09=09=09close(fd);
> -=09=09=09goto out;
> -=09=09}
> -=09}
> -
> -=09ret =3D write_full(fd, fdt, fdt32_to_cpu(fdt->totalsize));
> -
> -=09close(fd);
> -
> -=09if (ret < 0)
> -=09=09goto out;
> -
> -=09ret =3D 0;
> -out:
> -=09free(fdt);
> -=09of_delete_node(root);
> -
> -=09return ret;
> -}
> -
> -/*
> - * state_backend_dtb_file - create a dtb backend store for a state i=
nstance
> - *
> - * @state=09The state instance to work on
> - * @path=09The path where the state will be stored to
> - */
> -int state_backend_dtb_file(struct state *state, const char *of_path,=
 const char *path)
> -{
> -=09struct state_backend_dtb *backend_dtb;
> -=09struct state_backend *backend;
> -=09struct mtd_info_user meminfo;
> -=09int ret;
> -
> -=09if (state->backend)
> -=09=09return -EBUSY;
> -
> -=09backend_dtb =3D xzalloc(sizeof(*backend_dtb));
> -=09backend =3D &backend_dtb->backend;
> -
> -=09backend->save =3D state_backend_dtb_save;
> -=09backend->of_path =3D xstrdup(of_path);
> -=09backend->path =3D xstrdup(path);
> -=09backend->name =3D "dtb";
> -
> -=09state->backend =3D backend;
> -
> -=09ret =3D mtd_get_meminfo(backend->path, &meminfo);
> -=09if (!ret && !(meminfo.flags & MTD_NO_ERASE))
> -=09=09backend_dtb->need_erase =3D true;
> -
> -=09ret =3D state_backend_dtb_load(backend, state);
> -=09if (ret) {
> -=09=09dev_warn(&state->dev, "load failed - using defaults\n");
> -=09} else {
> -=09=09dev_info(&state->dev, "load successful\n");
> -=09=09state->dirty =3D 0;
> -=09}
> -
> -=09/* ignore return value of load() */
> -=09return 0;
> -}
> -
> -/*
> - * Raw backend implementation
> - */
> -struct state_backend_raw {
> -=09struct state_backend backend;
> -=09unsigned long size_data; /* The raw data size (without header) */=

> -=09unsigned long size_full; /* The size header + raw data + hmac */
> -=09unsigned long stride; /* The stride size in bytes of the copies *=
/
> -=09off_t offset; /* offset in the storage file */
> -=09size_t size; /* size of the storage area */
> -=09int num_copy_read; /* The first successfully read copy */
> -=09bool need_erase;
> -};
> -
> -struct backend_raw_header {
> -=09uint32_t magic;
> -=09uint16_t reserved;
> -=09uint16_t data_len;
> -=09uint32_t data_crc;
> -=09uint32_t header_crc;
> -};
> -
> -static int backend_raw_load_one(struct state_backend_raw *backend_ra=
w,
> -=09=09struct state *state, int fd, off_t offset)
> -{
> -=09uint32_t crc;
> -=09struct state_variable *sv;
> -=09struct backend_raw_header header =3D {};
> -=09unsigned long max_len;
> -=09int d_len =3D 0;
> -=09int ret;
> -=09void *buf, *data, *hmac;
> -
> -=09max_len =3D backend_raw->stride;
> -
> -=09ret =3D lseek(fd, offset, SEEK_SET);
> -=09if (ret < 0)
> -=09=09return ret;
> -
> -=09ret =3D read_full(fd, &header, sizeof(header));
> -=09max_len -=3D sizeof(header);
> -=09if (ret < 0) {
> -=09=09dev_err(&state->dev,
> -=09=09=09"cannot read header from backend device\n");
> -=09=09return ret;
> -=09}
> -
> -=09crc =3D crc32(0, &header, sizeof(header) - sizeof(uint32_t));
> -=09if (crc !=3D header.header_crc) {
> -=09=09dev_err(&state->dev,
> -=09=09=09"invalid header crc, calculated 0x%08x, found 0x%08x\n",
> -=09=09=09crc, header.header_crc);
> -=09=09return -EINVAL;
> -=09}
> -
> -=09if (state->magic && state->magic !=3D header.magic) {
> -=09=09dev_err(&state->dev,
> -=09=09=09"invalid magic 0x%08x, should be 0x%08x\n",
> -=09=09=09header.magic, state->magic);
> -=09=09return -EINVAL;
> -=09}
> -
> -=09if (backend_raw->backend.digest) {
> -=09=09d_len =3D digest_length(backend_raw->backend.digest);
> -=09=09max_len -=3D d_len;
> -=09}
> -
> -=09if (header.data_len > max_len) {
> -=09=09dev_err(&state->dev,
> -=09=09=09"invalid data_len %u in header, max is %lu\n",
> -=09=09=09header.data_len, max_len);
> -=09=09return -EINVAL;
> -=09}
> -
> -=09buf =3D xzalloc(sizeof(header) + header.data_len + d_len);
> -=09data =3D buf + sizeof(header);
> -=09hmac =3D data + header.data_len;
> -
> -=09ret =3D lseek(fd, offset, SEEK_SET);
> -=09if (ret < 0)
> -=09=09goto out_free;
> -
> -=09ret =3D read_full(fd, buf, sizeof(header) + header.data_len + d_l=
en);
> -=09if (ret < 0)
> -=09=09goto out_free;
> -
> -=09crc =3D crc32(0, data, header.data_len);
> -=09if (crc !=3D header.data_crc) {
> -=09=09dev_err(&state->dev,
> -=09=09=09"invalid crc, calculated 0x%08x, found 0x%08x\n",
> -=09=09=09crc, header.data_crc);
> -=09=09ret =3D -EINVAL;
> -=09=09goto out_free;
> -=09}
> -
> -=09if (backend_raw->backend.digest) {
> -=09=09struct digest *d =3D backend_raw->backend.digest;
> -
> -=09=09ret =3D digest_init(d);
> -=09=09if (ret)
> -=09=09=09goto out_free;
> -
> -=09=09/* hmac over header and data */
> -=09=09ret =3D digest_update(d, buf, sizeof(header) + header.data_len=
);
> -=09=09if (ret)
> -=09=09=09goto out_free;
> -
> -=09=09ret =3D digest_verify(d, hmac);
> -=09=09if (ret < 0)
> -=09=09=09goto out_free;
> -=09}
> -
> -=09list_for_each_entry(sv, &state->variables, list) {
> -=09=09if (sv->start + sv->size > header.data_len)
> -=09=09=09break;
> -=09=09memcpy(sv->raw, data + sv->start, sv->size);
> -=09}
> -
> -=09free(buf);
> -=09return 0;
> -
> - out_free:
> -=09free(buf);
> -=09return ret;
> -}
> -
> -static int state_backend_raw_load(struct state_backend *backend,
> -=09=09=09=09  struct state *state)
> -{
> -=09struct state_backend_raw *backend_raw =3D container_of(backend,
> -=09=09=09struct state_backend_raw, backend);
> -=09int ret =3D 0, fd, i;
> -
> -=09fd =3D open(backend->path, O_RDONLY);
> -=09if (fd < 0) {
> -=09=09dev_err(&state->dev, "cannot open %s\n", backend->path);
> -=09=09return fd;
> -=09}
> -
> -=09for (i =3D 0; i < RAW_BACKEND_COPIES; i++) {
> -=09=09off_t offset =3D backend_raw->offset + i * backend_raw->stride=
;
> -
> -=09=09ret =3D backend_raw_load_one(backend_raw, state, fd, offset);
> -=09=09if (!ret) {
> -=09=09=09backend_raw->num_copy_read =3D i;
> -=09=09=09dev_dbg(&state->dev,
> -=09=09=09=09"copy %d successfully loaded\n", i);
> -=09=09=09break;
> -=09=09}
> -=09}
> -
> -=09close(fd);
> -
> -=09return ret;
> -}
> -
> -static int backend_raw_save_one(struct state_backend_raw *backend_ra=
w,
> -=09=09struct state *state, int fd, int num, void *buf, size_t size)
> -{
> -=09int ret;
> -=09off_t offset =3D backend_raw->offset + num * backend_raw->stride;=

> -
> -=09dev_dbg(&state->dev, "%s: 0x%08lx 0x%08zx\n",
> -=09=09=09__func__, offset, size);
> -
> -=09ret =3D lseek(fd, offset, SEEK_SET);
> -=09if (ret < 0)
> -=09=09return ret;
> -
> -=09protect(fd, backend_raw->stride, offset, false);
> -
> -=09if (backend_raw->need_erase) {
> -=09=09ret =3D erase(fd, backend_raw->stride, offset);
> -=09=09if (ret)
> -=09=09=09return ret;
> -=09}
> -
> -=09ret =3D write_full(fd, buf, size);
> -=09if (ret < 0)
> -=09=09return ret;
> -
> -=09protect(fd, backend_raw->stride, offset, true);
> -
> -=09return 0;
> -}
> -
> -static int state_backend_raw_save(struct state_backend *backend,
> -=09=09=09=09  struct state *state)
> -{
> -=09struct state_backend_raw *backend_raw =3D container_of(backend,
> -=09=09=09struct state_backend_raw, backend);
> -=09int ret =3D 0, fd, i;
> -=09void *buf, *data, *hmac;
> -=09struct backend_raw_header *header;
> -=09struct state_variable *sv;
> -
> -=09buf =3D xzalloc(backend_raw->size_full);
> -
> -=09header =3D buf;
> -=09data =3D buf + sizeof(*header);
> -=09hmac =3D data + backend_raw->size_data;
> -
> -=09list_for_each_entry(sv, &state->variables, list)
> -=09=09memcpy(data + sv->start, sv->raw, sv->size);
> -
> -=09header->magic =3D state->magic;
> -=09header->data_len =3D backend_raw->size_data;
> -=09header->data_crc =3D crc32(0, data, backend_raw->size_data);
> -=09header->header_crc =3D crc32(0, header,
> -=09=09=09=09   sizeof(*header) - sizeof(uint32_t));
> -
> -=09if (backend_raw->backend.digest) {
> -=09=09struct digest *d =3D backend_raw->backend.digest;
> -
> -=09=09ret =3D digest_init(d);
> -=09=09if (ret)
> -=09=09=09goto out_free;
> -
> -=09=09/* hmac over header and data */
> -=09=09ret =3D digest_update(d, buf, sizeof(*header) + backend_raw->s=
ize_data);
> -=09=09if (ret)
> -=09=09=09goto out_free;
> -
> -=09=09ret =3D digest_final(d, hmac);
> -=09=09if (ret < 0)
> -=09=09=09goto out_free;
> -=09}
> -
> -=09fd =3D open(backend->path, O_WRONLY);
> -=09if (fd < 0)
> -=09=09goto out_free;
> -
> -=09/* save other slots first */
> -=09for (i =3D 0; i < RAW_BACKEND_COPIES; i++) {
> -=09=09if (i =3D=3D backend_raw->num_copy_read)
> -=09=09=09continue;
> -
> -=09=09ret =3D backend_raw_save_one(backend_raw, state, fd,
> -=09=09=09=09=09   i, buf, backend_raw->size_full);
> -=09=09if (ret)
> -=09=09=09goto out_close;
> -
> -=09}
> -
> -=09ret =3D backend_raw_save_one(backend_raw, state, fd,
> -=09=09=09=09   backend_raw->num_copy_read, buf, backend_raw->size_fu=
ll);
> -=09if (ret)
> -=09=09goto out_close;
> -
> -=09dev_dbg(&state->dev, "wrote state to %s\n", backend->path);
> -out_close:
> -=09close(fd);
> -out_free:
> -=09free(buf);
> -
> -=09return ret;
> -}
> -
> -#ifdef __BAREBOX__
> -#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode) || S_ISCHR(s.st_mode)=
)
> -#define BLKGET_GIVES_SIZE(s) 0
> -#ifndef BLKGETSIZE64
> -#define BLKGETSIZE64 -1
> -#endif
> -#else
> -#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode))
> -#define BLKGET_GIVES_SIZE(s) (S_ISBLK(s.st_mode))
> -#endif
> -
> -static int state_backend_raw_file_get_size(const char *path, size_t =
*out_size)
> -{
> -=09struct mtd_info_user meminfo;
> -=09struct stat s;
> -=09int ret;
> -
> -=09ret =3D stat(path, &s);
> -=09if (ret)
> -=09=09return -errno;
> -
> -=09/*
> -=09 * under Linux, stat() gives the size only on regular files
> -=09 * under barebox, it works on char dev, too
> -=09 */
> -=09if (STAT_GIVES_SIZE(s)) {
> -=09=09*out_size =3D s.st_size;
> -=09=09return 0;
> -=09}
> -
> -=09/* this works under Linux on block devs */
> -=09if (BLKGET_GIVES_SIZE(s)) {
> -=09=09int fd;
> -
> -=09=09fd =3D open(path, O_RDONLY);
> -=09=09if (fd < 0)
> -=09=09=09return -errno;
> -
> -=09=09ret =3D ioctl(fd, BLKGETSIZE64, out_size);
> -=09=09close(fd);
> -=09=09if (!ret)
> -=09=09=09return 0;
> -=09}
> -
> -=09/* try mtd next */
> -=09ret =3D mtd_get_meminfo(path, &meminfo);
> -=09if (!ret) {
> -=09=09*out_size =3D meminfo.size;
> -=09=09return 0;
> -=09}
> -
> -=09return ret;
> -}
> -
> -static int state_backend_raw_file_init_digest(struct state *state, s=
truct state_backend_raw *backend_raw)
> -{
> -=09struct digest *digest;
> -=09struct property *p;
> -=09const char *algo;
> -=09const unsigned char *key;
> -=09int key_len, ret;
> -
> -=09p =3D of_find_property(state->root, "algo", NULL);
> -=09if (!p)=09=09=09/* does not exist */
> -=09=09return 0;
> -
> -=09ret =3D of_property_read_string(state->root, "algo", &algo);
> -=09if (ret)
> -=09=09return ret;
> -
> -=09if (!IS_ENABLED(CONFIG_STATE_CRYPTO)) {
> -=09=09dev_err(&state->dev,
> -=09=09=09"algo %s specified, but crypto support for state framework =
(CONFIG_STATE_CRYPTO) not enabled.\n",
> -=09=09=09algo);
> -=09=09return -EINVAL;
> -=09}
> -
> -=09ret =3D keystore_get_secret(state->name, &key, &key_len);
> -=09if (ret =3D=3D -ENOENT)=09/* -ENOENT =3D=3D does not exist */
> -=09=09return -EPROBE_DEFER;
> -=09else if (ret)
> -=09=09return ret;
> -
> -=09digest =3D digest_alloc(algo);
> -=09if (!digest) {
> -=09=09dev_info(&state->dev, "algo %s not found - probe deferred\n", =
algo);
> -=09=09return -EPROBE_DEFER;
> -=09}
> -
> -=09ret =3D digest_set_key(digest, key, key_len);
> -=09if (ret) {
> -=09=09digest_free(digest);
> -=09=09return ret;
> -=09}
> -
> -=09backend_raw->backend.digest =3D digest;
> -=09backend_raw->size_full =3D digest_length(digest);
> -
> -=09return 0;
> -}
> -
> -/*
> - * state_backend_raw_file - create a raw file backend store for a st=
ate instance
> - *
> - * @state=09The state instance to work on
> - * @path=09The path where the state will be stored to
> - * @offset=09The offset in the storage file
> - * @size=09The maximum size to use in the storage file
> - *
> - * This backend stores raw binary data from a state instance. The
> - * binary data is protected with a magic value which has to match an=
d
> - * a crc32 that must be valid.  Two copies are stored, sufficient
> - * space must be available.
> -
> - * @path can be a path to a device or a regular file. When it's a
> - * device @size may be 0. The two copies are spread to different
> - * eraseblocks if approriate for this device.
> - */
> -int state_backend_raw_file(struct state *state, const char *of_path,=

> -=09=09const char *path, off_t offset, size_t size)
> -{
> -=09struct state_backend_raw *backend_raw;
> -=09struct state_backend *backend;
> -=09struct state_variable *sv;
> -=09struct mtd_info_user meminfo;
> -=09size_t path_size =3D 0;
> -=09int ret;
> -
> -=09if (state->backend)
> -=09=09return -EBUSY;
> -
> -=09ret =3D state_backend_raw_file_get_size(path, &path_size);
> -=09if (ret)
> -=09=09return ret;
> -
> -=09if (size =3D=3D 0)
> -=09=09size =3D path_size;
> -=09else if (offset + size > path_size)
> -=09=09return -EINVAL;
> -
> -=09backend_raw =3D xzalloc(sizeof(*backend_raw));
> -
> -=09ret =3D state_backend_raw_file_init_digest(state, backend_raw);
> -=09if (ret) {
> -=09=09free(backend_raw);
> -=09=09return ret;
> -=09}
> -
> -=09backend =3D &backend_raw->backend;
> -=09backend->save =3D state_backend_raw_save;
> -=09backend->of_path =3D xstrdup(of_path);
> -=09backend->path =3D xstrdup(path);
> -=09backend->name =3D "raw";
> -
> -=09sv =3D list_last_entry(&state->variables, struct state_variable, =
list);
> -=09backend_raw->size_data =3D sv->start + sv->size;
> -=09backend_raw->offset =3D offset;
> -=09backend_raw->size =3D size;
> -=09backend_raw->size_full +=3D backend_raw->size_data +
> -=09=09sizeof(struct backend_raw_header);
> -
> -=09state->backend =3D backend;
> -
> -=09ret =3D mtd_get_meminfo(backend->path, &meminfo);
> -=09if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
> -=09=09backend_raw->need_erase =3D true;
> -=09=09backend_raw->size_full =3D ALIGN(backend_raw->size_full,
> -=09=09=09=09=09       meminfo.writesize);
> -=09=09backend_raw->stride =3D ALIGN(backend_raw->size_full,
> -=09=09=09=09=09    meminfo.erasesize);
> -=09=09dev_dbg(&state->dev, "is a mtd, adjust stepsize to %ld\n",
> -=09=09=09backend_raw->stride);
> -=09} else {
> -=09=09backend_raw->stride =3D backend_raw->size_full;
> -=09}
> -
> -=09if (backend_raw->size / backend_raw->stride < RAW_BACKEND_COPIES)=
 {
> -=09=09dev_err(&state->dev, "not enough space for two copies (%lu eac=
h)\n",
> -=09=09=09backend_raw->stride);
> -=09=09ret =3D -ENOSPC;
> -=09=09goto err;
> -=09}
> -
> -=09ret =3D state_backend_raw_load(backend, state);
> -=09if (ret) {
> -=09=09dev_warn(&state->dev, "load failed - using defaults\n");
> -=09} else {
> -=09=09dev_info(&state->dev, "load successful\n");
> -=09=09state->dirty =3D 0;
> -=09}
> -
> -=09/* ignore return value of load() */
> -=09return 0;
> -err:
> -=09digest_free(backend_raw->backend.digest);
> -
> -=09free(backend_raw);
> -=09return ret;
> -}
> diff --git a/common/state/Makefile b/common/state/Makefile
> new file mode 100644
> index 000000000000..5d6dcb26dfeb
> --- /dev/null
> +++ b/common/state/Makefile
> @@ -0,0 +1,8 @@
> +obj-y +=3D state.o
> +obj-y +=3D state_variables.o
> +obj-y +=3D backend.o
> +obj-y +=3D backend_format_dtb.o
> +obj-y +=3D backend_format_raw.o
> +obj-y +=3D backend_storage.o
> +obj-y +=3D backend_bucket_direct.o
> +obj-y +=3D backend_bucket_circular.o
> diff --git a/common/state/backend.c b/common/state/backend.c
> new file mode 100644
> index 000000000000..054f8d646679
> --- /dev/null
> +++ b/common/state/backend.c
> @@ -0,0 +1,209 @@
> +/*
> + * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.=
de>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/list.h>
> +#include <linux/string.h>
> +#include <malloc.h>
> +#include <printk.h>
> +
> +#include "state.h"
> +
> +
> +/**
> + * Save the state
> + * @param state
> + * @return
> + */
> +int state_save(struct state *state)
> +{
> +=09uint8_t *buf;
> +=09ssize_t len;
> +=09int ret;
> +=09struct state_backend *backend =3D &state->backend;
> +
> +=09if (!state->dirty)
> +=09=09return 0;
> +
> +=09ret =3D backend->format->pack(backend->format, state, &buf, &len)=
;
> +=09if (ret) {
> +=09=09dev_err(&state->dev, "Failed to pack state with backend format=
 %s, %d\n",
> +=09=09=09backend->format->name, ret);
> +=09=09return ret;
> +=09}
> +
> +=09ret =3D state_storage_write(&backend->storage, buf, len);
> +=09if (ret) {
> +=09=09dev_err(&state->dev, "Failed to write packed state, %d\n", ret=
);
> +=09=09goto out;
> +=09}
> +
> +=09state->dirty =3D 0;
> +
> +out:
> +=09free(buf);
> +=09return ret;
> +}
> +
> +/**
> + * state_load - Loads a state from the backend
> + * @param state The state that should be updated to contain the load=
ed data
> + * @return 0 on success, -errno on failure. If no state is loaded th=
e previous
> + * values remain in the state.
> + *
> + * This function uses the registered storage backend to read data. A=
ll data that
> + * we read is checked for integrity by the formatter. After that we =
unpack the
> + * data into our state.
> + */
> +int state_load(struct state *state)
> +{
> +=09uint8_t *buf;
> +=09ssize_t len;
> +=09ssize_t len_hint =3D 0;
> +=09int ret;
> +=09struct state_backend *backend =3D &state->backend;
> +
> +=09if (backend->format->get_packed_len)
> +=09=09len_hint =3D backend->format->get_packed_len(backend->format,
> +=09=09=09=09=09=09=09   state);
> +=09ret =3D state_storage_read(&backend->storage, backend->format,
> +=09=09=09=09 state->magic, &buf, &len, len_hint);
> +=09if (ret) {
> +=09=09dev_err(&state->dev, "Failed to read state with format %s, %d\=
n",
> +=09=09=09backend->format->name, ret);
> +=09=09return ret;
> +=09}
> +
> +=09ret =3D backend->format->unpack(backend->format, state, buf, len)=
;
> +=09if (ret) {
> +=09=09dev_err(&state->dev, "Failed to unpack read data with format %=
s although verified, %d\n",
> +=09=09=09backend->format->name, ret);
> +=09=09goto out;
> +=09}
> +
> +=09state->dirty =3D 0;
> +
> +out:
> +=09free(buf);
> +=09return ret;
> +}
> +
> +static int state_format_init(struct state_backend *backend,
> +=09=09=09     struct device_d *dev, const char *backend_format,
> +=09=09=09     struct device_node *node, const char *state_name)
> +{
> +=09int ret;
> +
> +=09if (!strcmp(backend_format, "raw")) {
> +=09=09ret =3D backend_format_raw_create(&backend->format, node,
> +=09=09=09=09=09=09state_name, dev);
> +=09} else if (!strcmp(backend_format, "dtb")) {
> +=09=09ret =3D backend_format_dtb_create(&backend->format, dev);
> +=09} else {
> +=09=09dev_err(dev, "Invalid backend format %s\n",
> +=09=09=09backend_format);
> +=09=09return -EINVAL;
> +=09}
> +
> +=09if (ret && ret !=3D -EPROBE_DEFER)
> +=09=09dev_err(dev, "Failed to initialize format %s, %d\n",
> +=09=09=09backend_format, ret);
> +
> +=09return ret;
> +}
> +
> +static void state_format_free(struct state_backend_format *format)
> +{
> +=09if (format->free)
> +=09=09format->free(format);
> +}
> +
> +/**
> + * state_backend_init - Initiates the backend storage and format usi=
ng the
> + * passed arguments
> + * @param backend state backend
> + * @param dev Device pointer used for prints
> + * @param node the DT device node corresponding to the state
> + * @param backend_format a string describing the format. Valid value=
s are 'raw'
> + * and 'dtb' currently
> + * @param storage_path Path to the backend storage file/device/parti=
tion/...
> + * @param state_name Name of the state
> + * @param of_path Path in the devicetree
> + * @param stridesize stridesize in case we have a medium without era=
seblocks.
> + * stridesize describes how far apart copies of the same data should=
 be stored.
> + * For blockdevices it makes sense to align them on blocksize.
> + * @param storagetype Type of the storage backend. This may be NULL =
where we
> + * autoselect some backwardscompatible backend options
> + * @return 0 on success, -errno otherwise
> + */
> +int state_backend_init(struct state_backend *backend, struct device_=
d *dev,
> +=09=09       struct device_node *node, const char *backend_format,
> +=09=09       const char *storage_path, const char *state_name, const=

> +=09=09       char *of_path, off_t offset, size_t max_size,
> +=09=09       uint32_t stridesize, const char *storagetype)
> +{
> +=09struct state_backend_storage_bucket *bucket;
> +=09struct state_backend_storage_bucket *bucket_tmp;
> +=09int ret;
> +
> +=09ret =3D state_format_init(backend, dev, backend_format, node, sta=
te_name);
> +=09if (ret)
> +=09=09return ret;
> +
> +=09ret =3D state_storage_init(&backend->storage, dev, storage_path, =
offset,
> +=09=09=09=09 max_size, stridesize, storagetype);
> +=09if (ret)
> +=09=09goto out_free_format;
> +
> +=09list_for_each_entry_safe(bucket, bucket_tmp, &backend->storage.bu=
ckets,
> +=09=09=09=09 bucket_list) {
> +=09=09if (!bucket->init)
> +=09=09=09continue;
> +
> +=09=09ret =3D bucket->init(bucket);
> +=09=09if (ret) {
> +=09=09=09dev_warn(dev, "Bucket init failed, state degraded, %d\n",
> +=09=09=09=09 ret);
> +=09=09=09list_del(&bucket->bucket_list);
> +=09=09=09bucket->free(bucket);
> +=09=09=09continue;
> +=09=09}
> +=09}
> +
> +=09if (list_empty(&backend->storage.buckets)) {
> +=09=09dev_err(dev, "Failed to initialize any state bucket\n");
> +=09=09ret =3D -EIO;
> +=09=09goto out_free_storage;
> +=09}
> +
> +
> +=09backend->of_path =3D of_path;
> +
> +=09return 0;
> +
> +out_free_storage:
> +=09state_storage_free(&backend->storage);
> +out_free_format:
> +=09state_format_free(backend->format);
> +=09backend->format =3D NULL;
> +
> +=09return ret;
> +}
> +
> +void state_backend_free(struct state_backend *backend)
> +{
> +=09state_storage_free(&backend->storage);
> +=09if (backend->format)
> +=09=09state_format_free(backend->format);
> +}
> diff --git a/common/state/backend_bucket_circular.c b/common/state/ba=
ckend_bucket_circular.c
> new file mode 100644
> index 000000000000..64e9be2e9979
> --- /dev/null
> +++ b/common/state/backend_bucket_circular.c
> @@ -0,0 +1,580 @@
> +/*
> + * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.=
de>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <asm-generic/ioctl.h>
> +#include <common.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <linux/kernel.h>
> +#include <linux/mtd/mtd-abi.h>
> +#include <malloc.h>
> +#include <mtd/mtd-peb.h>
> +#include <string.h>
> +
> +#include "state.h"
> +
> +
> +struct state_backend_storage_bucket_circular {
> +=09struct state_backend_storage_bucket bucket;
> +
> +=09unsigned int eraseblock; /* Which eraseblock is used */
> +=09ssize_t writesize; /* Alignment of writes */
> +=09ssize_t max_size; /* Maximum size of this bucket */
> +
> +=09off_t write_area; /* Start of the write area (relative offset) */=

> +=09uint32_t last_written_length; /* Size of the data written in the =
storage */
> +
> +#ifdef __BAREBOX__
> +=09struct mtd_info *mtd; /* mtd info (used for io in Barebox)*/
> +#else
> +=09struct mtd_info_user *mtd;
> +=09int fd;
> +#endif
> +
> +=09/* Cached data of the last read/write */
> +=09u8 *current_data;
> +=09ssize_t current_data_len;
> +
> +=09bool force_rewrite; /* In case of degradation, force a rewrite */=

> +
> +=09/* For outputs */
> +=09struct device_d *dev;
> +};
> +
> +struct state_backend_storage_bucket_circular_meta {
> +=09uint32_t magic;
> +=09uint32_t written_length;
> +};
> +
> +static const uint32_t circular_magic =3D 0x14fa2d02;
> +static const uint8_t free_pattern =3D 0xff;
> +
> +static inline struct state_backend_storage_bucket_circular
> +    *get_bucket_circular(struct state_backend_storage_bucket *bucket=
)
> +{
> +=09return container_of(bucket,
> +=09=09=09    struct state_backend_storage_bucket_circular,
> +=09=09=09    bucket);
> +}
> +
> +#ifdef __BAREBOX__
> +static int state_mtd_peb_read(struct state_backend_storage_bucket_ci=
rcular *circ,
> +=09=09=09      char *buf, int offset, int len)
> +{
> +=09int ret;
> +
> +=09ret =3D mtd_peb_read(circ->mtd, buf, circ->eraseblock, offset, le=
n);
> +=09if (ret =3D=3D -EBADMSG) {
> +=09=09ret =3D mtd_peb_torture(circ->mtd, circ->eraseblock);
> +=09=09if (ret =3D=3D -EIO) {
> +=09=09=09dev_err(circ->dev, "Tortured eraseblock failed and is marke=
d bad now, PEB %u\n",
> +=09=09=09=09circ->eraseblock);
> +=09=09=09return -EIO;
> +=09=09} else if (ret < 0) {
> +=09=09=09dev_err(circ->dev, "Failed to torture eraseblock, %d\n",
> +=09=09=09=09ret);
> +=09=09=09return ret;
> +=09=09}
> +=09=09/*
> +=09=09 * Fill with invalid data so that the next write is done
> +=09=09 * behind this area
> +=09=09 */
> +=09=09memset(buf, 0, len);
> +=09=09circ->force_rewrite =3D true;
> +=09=09circ->write_area =3D 0;
> +=09=09dev_dbg(circ->dev, "PEB %u has ECC error, forcing rewrite\n",
> +=09=09=09circ->eraseblock);
> +=09} else if (ret =3D=3D -EUCLEAN) {
> +=09=09circ->force_rewrite =3D true;
> +=09=09dev_dbg(circ->dev, "PEB %u is unclean, forcing rewrite\n",
> +=09=09=09circ->eraseblock);
> +=09} else if (ret < 0) {
> +=09=09dev_err(circ->dev, "Failed to read PEB %u, %d\n",
> +=09=09=09circ->eraseblock, ret);
> +=09=09return ret;
> +=09}
> +
> +=09return 0;
> +}
> +
> +static int state_mtd_peb_write(struct state_backend_storage_bucket_c=
ircular *circ,
> +=09=09=09       const char *buf, int offset, int len)
> +{
> +=09int ret;
> +
> +=09ret =3D mtd_peb_write(circ->mtd, buf, circ->eraseblock, offset, l=
en);
> +=09if (ret =3D=3D -EBADMSG) {
> +=09=09ret =3D mtd_peb_torture(circ->mtd, circ->eraseblock);
> +=09=09if (ret =3D=3D -EIO) {
> +=09=09=09dev_err(circ->dev, "Tortured eraseblock failed and is marke=
d bad now, PEB %u\n",
> +=09=09=09=09circ->eraseblock);
> +=09=09=09return -EIO;
> +=09=09} else if (ret < 0) {
> +=09=09=09dev_err(circ->dev, "Failed to torture eraseblock, %d\n",
> +=09=09=09=09ret);
> +=09=09=09return ret;
> +=09=09}
> +=09=09circ->force_rewrite =3D true;
> +=09} else if (ret < 0 && ret !=3D -EUCLEAN) {
> +=09=09dev_err(circ->dev, "Failed to write PEB %u, %d\n",
> +=09=09=09circ->eraseblock, ret);
> +=09=09return ret;
> +=09}
> +
> +=09return 0;
> +}
> +
> +static int state_mtd_peb_erase(struct state_backend_storage_bucket_c=
ircular *circ)
> +{
> +=09return mtd_peb_erase(circ->mtd, circ->eraseblock);
> +}
> +#else
> +static int state_mtd_peb_read(struct state_backend_storage_bucket_ci=
rcular *circ,
> +=09=09=09      char *buf, int suboffset, int len)
> +{
> +=09int ret;
> +=09off_t offset =3D suboffset;
> +=09struct mtd_ecc_stats stat1, stat2;
> +=09bool nostats =3D false;
> +
> +=09offset +=3D (off_t)circ->eraseblock * circ->mtd->erasesize;
> +
> +=09ret =3D lseek(circ->fd, offset, SEEK_SET);
> +=09if (ret < 0) {
> +=09=09dev_err(circ->dev, "Failed to set circular read position to %l=
ld, %d\n",
> +=09=09=09offset, ret);
> +=09=09return ret;
> +=09}
> +
> +=09dev_dbg(circ->dev, "Read state from %ld length %zd\n", offset,
> +=09=09len);
> +
> +=09ret =3D ioctl(circ->fd, ECCGETSTATS, &stat1);
> +=09if (ret)
> +=09=09nostats =3D true;
> +
> +=09ret =3D read_full(circ->fd, buf, len);
> +=09if (ret < 0) {
> +=09=09dev_err(circ->dev, "Failed to read circular storage len %zd, %=
d\n",
> +=09=09=09len, ret);
> +=09=09free(buf);
> +=09=09return ret;
> +=09}
> +
> +=09if (nostats)
> +=09=09return 0;
> +
> +=09ret =3D ioctl(circ->fd, ECCGETSTATS, &stat2);
> +=09if (ret)
> +=09=09return 0;
> +
> +=09if (stat2.failed - stat1.failed > 0) {
> +=09=09circ->force_rewrite =3D true;
> +=09=09dev_dbg(circ->dev, "PEB %u has ECC error, forcing rewrite\n",
> +=09=09=09circ->eraseblock);
> +=09} else if (stat2.corrected - stat1.corrected > 0) {
> +=09=09circ->force_rewrite =3D true;
> +=09=09dev_dbg(circ->dev, "PEB %u is unclean, forcing rewrite\n",
> +=09=09=09circ->eraseblock);
> +=09}
> +
> +=09return 0;
> +}
> +
> +static int state_mtd_peb_write(struct state_backend_storage_bucket_c=
ircular *circ,
> +=09=09=09       const char *buf, int suboffset, int len)
> +{
> +=09int ret;
> +=09off_t offset =3D suboffset;
> +
> +=09offset +=3D circ->eraseblock * circ->mtd->erasesize;
> +
> +=09ret =3D lseek(circ->fd, offset, SEEK_SET);
> +=09if (ret < 0) {
> +=09=09dev_err(circ->dev, "Failed to set position for circular write =
%ld, %d\n",
> +=09=09=09offset, ret);
> +=09=09return ret;
> +=09}
> +
> +=09ret =3D write_full(circ->fd, buf, len);
> +=09if (ret < 0) {
> +=09=09dev_err(circ->dev, "Failed to write circular to %ld length %zd=
, %d\n",
> +=09=09=09offset, len, ret);
> +=09=09return ret;
> +=09}
> +
> +=09/*
> +=09 * We keep the fd open, so flush is necessary. We ignore the retu=
rn
> +=09 * value as flush is currently not supported for mtd under linux.=

> +=09 */
> +=09flush(circ->fd);
> +
> +=09dev_dbg(circ->dev, "Written state to offset %ld length %zd data l=
ength %zd\n",
> +=09=09offset, len, len);
> +
> +=09return 0;
> +}
> +
> +static int state_mtd_peb_erase(struct state_backend_storage_bucket_c=
ircular *circ)
> +{
> +=09return erase(circ->fd, circ->mtd->erasesize,
> +=09=09     (off_t)circ->eraseblock * circ->mtd->erasesize);
> +}
> +#endif
> +
> +static int state_backend_bucket_circular_fill_cache(
> +=09=09struct state_backend_storage_bucket *bucket)
> +{
> +=09struct state_backend_storage_bucket_circular *circ =3D
> +=09    get_bucket_circular(bucket);
> +=09ssize_t read_len;
> +=09off_t offset;
> +=09uint8_t *buf;
> +=09int ret;
> +
> +=09/* Storage is empty */
> +=09if (circ->write_area =3D=3D 0)
> +=09=09return -ENODATA;
> +
> +=09if (!circ->last_written_length) {
> +=09=09/*
> +=09=09 * Last write did not contain length information, assuming old=

> +=09=09 * state and reading from the beginning.
> +=09=09 */
> +=09=09offset =3D 0;
> +=09=09read_len =3D min(circ->write_area, (off_t)(circ->max_size -
> +=09=09=09       sizeof(struct state_backend_storage_bucket_circular_=
meta)));
> +=09=09circ->write_area =3D 0;
> +=09=09dev_dbg(circ->dev, "Detected old on-storage format\n");
> +=09} else if (circ->last_written_length > circ->write_area
> +=09=09   || !IS_ALIGNED(circ->last_written_length, circ->writesize))=
 {
> +=09=09circ->write_area =3D 0;
> +=09=09dev_err(circ->dev, "Error, invalid number of bytes written las=
t time %d\n",
> +=09=09=09circ->last_written_length);
> +=09=09return -EINVAL;
> +=09} else {
> +=09=09/*
> +=09=09 * Normally we read at the end of the non-free area. The lengt=
h
> +=09=09 * of the read is then what we read from the meta data
> +=09=09 * (last_written_length)
> +=09=09 */
> +=09=09read_len =3D circ->last_written_length;
> +=09=09offset =3D circ->write_area - read_len;
> +=09}
> +
> +=09buf =3D xmalloc(read_len);
> +=09if (!buf)
> +=09=09return -ENOMEM;
> +
> +=09dev_dbg(circ->dev, "Read state from PEB %u global offset %ld leng=
th %zd\n",
> +=09=09circ->eraseblock, offset, read_len);
> +
> +=09ret =3D state_mtd_peb_read(circ, buf, offset, read_len);
> +=09if (ret < 0) {
> +=09=09dev_err(circ->dev, "Failed to read circular storage len %zd, %=
d\n",
> +=09=09=09read_len, ret);
> +=09=09free(buf);
> +=09=09return ret;
> +=09}
> +
> +=09circ->current_data =3D buf;
> +=09circ->current_data_len =3D read_len;
> +
> +=09return 0;
> +}
> +
> +static int state_backend_bucket_circular_read(struct state_backend_s=
torage_bucket *bucket,
> +=09=09=09=09=09      uint8_t ** buf_out,
> +=09=09=09=09=09      ssize_t * len_hint)
> +{
> +=09struct state_backend_storage_bucket_circular *circ =3D
> +=09    get_bucket_circular(bucket);
> +=09int ret;
> +
> +=09if (!circ->current_data) {
> +=09=09ret =3D state_backend_bucket_circular_fill_cache(bucket);
> +=09=09if (ret)
> +=09=09=09return ret;
> +=09}
> +
> +=09/*
> +=09 * We keep the internal copy in the cache and duplicate the data =
for
> +=09 * external use
> +=09 */
> +=09*buf_out =3D xmemdup(circ->current_data, circ->current_data_len);=

> +=09if (!*buf_out)
> +=09=09return -ENOMEM;
> +
> +=09*len_hint =3D circ->current_data_len - sizeof(struct state_backen=
d_storage_bucket_circular_meta);
> +
> +=09return 0;
> +}
> +
> +static int state_backend_bucket_circular_write(struct state_backend_=
storage_bucket *bucket,
> +=09=09=09=09=09       const uint8_t * buf,
> +=09=09=09=09=09       ssize_t len)
> +{
> +=09struct state_backend_storage_bucket_circular *circ =3D
> +=09    get_bucket_circular(bucket);
> +=09off_t offset;
> +=09struct state_backend_storage_bucket_circular_meta *meta;
> +=09uint32_t written_length =3D ALIGN(len + sizeof(*meta), circ->writ=
esize);
> +=09int ret;
> +=09uint8_t *write_buf;
> +
> +=09if (written_length > circ->max_size) {
> +=09=09dev_err(circ->dev, "Error, state data too big to be written, t=
o write: %zd, writesize: %zd, length: %zd, available: %zd\n",
> +=09=09=09written_length, circ->writesize, len, circ->max_size);
> +=09=09return -E2BIG;
> +=09}
> +
> +=09/*
> +=09 * We need zero initialization so that our data comparisons don't=
 show
> +=09 * random changes
> +=09 */
> +=09write_buf =3D xzalloc(written_length);
> +=09if (!write_buf)
> +=09=09return -ENOMEM;
> +
> +=09memcpy(write_buf, buf, len);
> +=09meta =3D (struct state_backend_storage_bucket_circular_meta *)
> +=09=09=09(write_buf + written_length - sizeof(*meta));
> +=09meta->magic =3D circular_magic;
> +=09meta->written_length =3D written_length;
> +
> +=09/* Nothing in cache? Then read to see what is on the device curre=
ntly */
> +=09if (!circ->current_data) {
> +=09=09state_backend_bucket_circular_fill_cache(bucket);
> +=09}
> +
> +=09/*
> +=09 * If we would write the same data that is currently on the devic=
e, we
> +=09 * can return successfully without writing.
> +=09 * Note that the cache may still be empty if the storage is empty=
 or
> +=09 * errors occured.
> +=09 */
> +=09if (circ->current_data) {
> +=09=09dev_dbg(circ->dev, "Comparing cached data, writing %zd bytes, =
cached %zd bytes\n",
> +=09=09=09written_length, circ->current_data_len);
> +=09=09if (!circ->force_rewrite &&
> +=09=09    written_length =3D=3D circ->current_data_len &&
> +=09=09    !memcmp(circ->current_data, write_buf, written_length)) {
> +=09=09=09dev_dbg(circ->dev, "Data already on device, not writing aga=
in\n");
> +=09=09=09goto out_free;
> +=09=09} else {
> +=09=09=09free(circ->current_data);
> +=09=09=09circ->current_data =3D NULL;
> +=09=09}
> +=09}
> +
> +=09if (circ->write_area + written_length >=3D circ->max_size) {
> +=09=09circ->write_area =3D 0;
> +=09}
> +=09/*
> +=09 * If the write area is at the beginning of the page, erase it an=
d write
> +=09 * at offset 0. As we only erase right before writing there are n=
o
> +=09 * conditions where we regularly erase a block multiple times wit=
hout
> +=09 * writing.
> +=09 */
> +=09if (circ->write_area =3D=3D 0) {
> +=09=09dev_dbg(circ->dev, "Erasing PEB %u\n", circ->eraseblock);
> +=09=09ret =3D state_mtd_peb_erase(circ);
> +=09=09if (ret) {
> +=09=09=09dev_err(circ->dev, "Failed to erase PEB %u\n",
> +=09=09=09=09circ->eraseblock);
> +=09=09=09goto out_free;
> +=09=09}
> +=09}
> +
> +=09offset =3D circ->write_area;
> +
> +=09/*
> +=09 * Update write_area before writing. The write operation may put
> +=09 * arbitrary amount of the data into the storage before failing. =
In this
> +=09 * case we want to start after that area.
> +=09 */
> +=09circ->write_area +=3D written_length;
> +
> +=09ret =3D state_mtd_peb_write(circ, write_buf, offset, written_leng=
th);
> +=09if (ret < 0) {
> +=09=09dev_err(circ->dev, "Failed to write circular to %ld length %zd=
, %d\n",
> +=09=09=09offset, written_length, ret);
> +=09=09goto out_free;
> +=09}
> +
> +=09dev_dbg(circ->dev, "Written state to PEB %u offset %ld length %zd=
 data length %zd\n",
> +=09=09circ->eraseblock, offset, written_length, len);
> +
> +=09/* Put written data into the cache */
> +=09WARN_ON(circ->current_data);
> +=09circ->current_data =3D write_buf;
> +=09circ->current_data_len =3D written_length;
> +=09write_buf =3D NULL;
> +=09circ->force_rewrite =3D false;
> +
> +out_free:
> +=09if (write_buf)
> +=09=09free(write_buf);
> +=09return 0;
> +}
> +
> +/**
> + * state_backend_bucket_circular_init - Initialize circular bucket
> + * @param bucket
> + * @return 0 on success, -errno otherwise
> + *
> + * This function searches for the beginning of the written area from=
 the end of
> + * the MTD device. This way it knows where the data ends and where t=
he free area
> + * starts.
> + */
> +static int state_backend_bucket_circular_init(
> +=09=09struct state_backend_storage_bucket *bucket)
> +{
> +=09struct state_backend_storage_bucket_circular *circ =3D
> +=09    get_bucket_circular(bucket);
> +=09int sub_offset;
> +=09uint32_t written_length =3D 0;
> +=09uint8_t *buf;
> +
> +=09buf =3D xmalloc(circ->writesize);
> +=09if (!buf)
> +=09=09return -ENOMEM;
> +
> +=09for (sub_offset =3D circ->max_size - circ->writesize; sub_offset =
>=3D 0;
> +=09     sub_offset -=3D circ->writesize) {
> +=09=09int ret;
> +
> +=09=09ret =3D state_mtd_peb_read(circ, buf, sub_offset,
> +=09=09=09=09=09 circ->writesize);
> +=09=09if (ret)
> +=09=09=09return ret;
> +
> +=09=09ret =3D mtd_buf_all_ff(buf, circ->writesize);
> +=09=09if (!ret) {
> +=09=09=09struct state_backend_storage_bucket_circular_meta *meta;
> +
> +=09=09=09meta =3D (struct state_backend_storage_bucket_circular_meta=
 *)
> +=09=09=09=09=09(buf + circ->writesize - sizeof(*meta));
> +
> +=09=09=09if (meta->magic !=3D circular_magic)
> +=09=09=09=09written_length =3D 0;
> +=09=09=09else
> +=09=09=09=09written_length =3D meta->written_length;
> +
> +=09=09=09break;
> +=09=09}
> +=09}
> +
> +=09circ->write_area =3D sub_offset + circ->writesize;
> +=09circ->last_written_length =3D written_length;
> +
> +=09free(buf);
> +
> +=09return 0;
> +}
> +
> +static void state_backend_bucket_circular_free(struct
> +=09=09=09=09=09       state_backend_storage_bucket
> +=09=09=09=09=09       *bucket)
> +{
> +=09struct state_backend_storage_bucket_circular *circ =3D
> +=09    get_bucket_circular(bucket);
> +
> +=09if (circ->current_data)
> +=09=09free(circ->current_data);
> +=09free(circ);
> +}
> +
> +#ifdef __BAREBOX__
> +static int bucket_circular_is_block_bad(struct state_backend_storage=
_bucket_circular *circ)
> +{
> +=09int ret;
> +
> +=09ret =3D mtd_peb_is_bad(circ->mtd, circ->eraseblock);
> +=09if (ret < 0)
> +=09=09dev_err(circ->dev, "Failed to determine whether eraseblock %u =
is bad, %d\n",
> +=09=09=09circ->eraseblock, ret);
> +
> +=09return ret;
> +}
> +#else
> +static int bucket_circular_is_block_bad(struct state_backend_storage=
_bucket_circular *circ)
> +{
> +=09int ret;
> +=09loff_t offs =3D circ->eraseblock * circ->mtd->erasesize;
> +
> +=09ret =3D ioctl(circ->fd, MEMGETBADBLOCK, &offs);
> +=09if (ret < 0)
> +=09=09dev_err(circ->dev, "Failed to use ioctl to check for bad block=
 at offset %ld, %d\n",
> +=09=09=09offs, ret);
> +
> +=09return ret;
> +}
> +#endif
> +
> +int state_backend_bucket_circular_create(struct device_d *dev, const=
 char *path,
> +=09=09=09=09=09 struct state_backend_storage_bucket **bucket,
> +=09=09=09=09=09 unsigned int eraseblock,
> +=09=09=09=09=09 ssize_t writesize,
> +=09=09=09=09=09 struct mtd_info_user *mtd_uinfo)
> +{
> +=09struct state_backend_storage_bucket_circular *circ;
> +=09int ret;
> +
> +=09circ =3D xzalloc(sizeof(*circ));
> +=09circ->eraseblock =3D eraseblock;
> +=09circ->writesize =3D writesize;
> +=09circ->max_size =3D mtd_uinfo->erasesize;
> +=09circ->dev =3D dev;
> +
> +#ifdef __BAREBOX__
> +=09circ->mtd =3D mtd_uinfo->mtd;
> +#else
> +=09circ->mtd =3D xzalloc(sizeof(*mtd_uinfo));
> +=09memcpy(circ->mtd, mtd_uinfo, sizeof(*mtd_uinfo));
> +=09circ->fd =3D open(path, O_RDWR);
> +=09if (circ->fd < 0) {
> +=09=09pr_err("Failed to open circular bucket '%s'\n", path);
> +=09=09return -errno;
> +=09}
> +#endif
> +
> +=09ret =3D bucket_circular_is_block_bad(circ);
> +=09if (ret) {
> +=09=09dev_info(dev, "Not using eraseblock %u, it is marked as bad (%=
d)\n",
> +=09=09=09 circ->eraseblock, ret);
> +=09=09ret =3D -EIO;
> +=09=09goto out_free;
> +=09}
> +
> +=09circ->bucket.read =3D state_backend_bucket_circular_read;
> +=09circ->bucket.write =3D state_backend_bucket_circular_write;
> +=09circ->bucket.free =3D state_backend_bucket_circular_free;
> +=09*bucket =3D &circ->bucket;
> +
> +=09ret =3D state_backend_bucket_circular_init(*bucket);
> +=09if (ret)
> +=09=09goto out_free;
> +
> +=09return 0;
> +
> +out_free:
> +#ifndef __BAREBOX__
> +=09close(circ->fd);
> +#endif
> +=09free(circ);
> +
> +=09return ret;
> +}
> diff --git a/common/state/backend_bucket_direct.c b/common/state/back=
end_bucket_direct.c
> new file mode 100644
> index 000000000000..08892f001e25
> --- /dev/null
> +++ b/common/state/backend_bucket_direct.c
> @@ -0,0 +1,180 @@
> +/*
> + * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.=
de>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <linux/kernel.h>
> +#include <malloc.h>
> +#include <printk.h>
> +
> +#include "state.h"
> +
> +struct state_backend_storage_bucket_direct {
> +=09struct state_backend_storage_bucket bucket;
> +
> +=09ssize_t offset;
> +=09ssize_t max_size;
> +
> +=09int fd;
> +
> +=09struct device_d *dev;
> +};
> +
> +struct state_backend_storage_bucket_direct_meta {
> +=09uint32_t magic;
> +=09uint32_t written_length;
> +};
> +static const uint32_t direct_magic =3D 0x2354fdf3;
> +
> +static inline struct state_backend_storage_bucket_direct
> +    *get_bucket_direct(struct state_backend_storage_bucket *bucket)
> +{
> +=09return container_of(bucket, struct state_backend_storage_bucket_d=
irect,
> +=09=09=09    bucket);
> +}
> +
> +static int state_backend_bucket_direct_read(struct state_backend_sto=
rage_bucket
> +=09=09=09=09=09    *bucket, uint8_t ** buf_out,
> +=09=09=09=09=09    ssize_t * len_hint)
> +{
> +=09struct state_backend_storage_bucket_direct *direct =3D
> +=09    get_bucket_direct(bucket);
> +=09struct state_backend_storage_bucket_direct_meta meta;
> +=09ssize_t read_len;
> +=09uint8_t *buf;
> +=09int ret;
> +
> +=09ret =3D lseek(direct->fd, direct->offset, SEEK_SET);
> +=09if (ret < 0) {
> +=09=09dev_err(direct->dev, "Failed to seek file, %d\n", ret);
> +=09=09return ret;
> +=09}
> +=09ret =3D read_full(direct->fd, &meta, sizeof(meta));
> +=09if (ret < 0) {
> +=09=09dev_err(direct->dev, "Failed to read meta data from file, %d\n=
", ret);
> +=09=09return ret;
> +=09}
> +=09if (meta.magic =3D=3D direct_magic) {
> +=09=09read_len =3D meta.written_length;
> +=09} else {
> +=09=09if (*len_hint)
> +=09=09=09read_len =3D *len_hint;
> +=09=09else
> +=09=09=09read_len =3D direct->max_size;
> +=09=09ret =3D lseek(direct->fd, direct->offset, SEEK_SET);
> +=09=09if (ret < 0) {
> +=09=09=09dev_err(direct->dev, "Failed to seek file, %d\n", ret);
> +=09=09=09return ret;
> +=09=09}
> +=09}
> +=09if (direct->max_size)
> +=09=09read_len =3D min(read_len, direct->max_size);
> +
> +=09buf =3D xmalloc(read_len);
> +=09if (!buf)
> +=09=09return -ENOMEM;
> +
> +=09ret =3D read_full(direct->fd, buf, read_len);
> +=09if (ret < 0) {
> +=09=09dev_err(direct->dev, "Failed to read from file, %d\n", ret);
> +=09=09free(buf);
> +=09=09return ret;
> +=09}
> +
> +=09*buf_out =3D buf;
> +=09*len_hint =3D read_len;
> +
> +=09return 0;
> +}
> +
> +static int state_backend_bucket_direct_write(struct state_backend_st=
orage_bucket
> +=09=09=09=09=09     *bucket, const uint8_t * buf,
> +=09=09=09=09=09     ssize_t len)
> +{
> +=09struct state_backend_storage_bucket_direct *direct =3D
> +=09    get_bucket_direct(bucket);
> +=09int ret;
> +=09struct state_backend_storage_bucket_direct_meta meta;
> +
> +=09if (direct->max_size && len > direct->max_size)
> +=09=09return -E2BIG;
> +
> +=09ret =3D lseek(direct->fd, direct->offset, SEEK_SET);
> +=09if (ret < 0) {
> +=09=09dev_err(direct->dev, "Failed to seek file, %d\n", ret);
> +=09=09return ret;
> +=09}
> +
> +=09meta.magic =3D direct_magic;
> +=09meta.written_length =3D len;
> +=09ret =3D write_full(direct->fd, &meta, sizeof(meta));
> +=09if (ret < 0) {
> +=09=09dev_err(direct->dev, "Failed to write metadata to file, %d\n",=
 ret);
> +=09=09return ret;
> +=09}
> +
> +=09ret =3D write_full(direct->fd, buf, len);
> +=09if (ret < 0) {
> +=09=09dev_err(direct->dev, "Failed to write file, %d\n", ret);
> +=09=09return ret;
> +=09}
> +
> +=09ret =3D flush(direct->fd);
> +=09if (ret < 0) {
> +=09=09dev_err(direct->dev, "Failed to flush file, %d\n", ret);
> +=09=09return ret;
> +=09}
> +
> +=09return 0;
> +}
> +
> +static void state_backend_bucket_direct_free(struct
> +=09=09=09=09=09     state_backend_storage_bucket
> +=09=09=09=09=09     *bucket)
> +{
> +=09struct state_backend_storage_bucket_direct *direct =3D
> +=09    get_bucket_direct(bucket);
> +
> +=09close(direct->fd);
> +=09free(direct);
> +}
> +
> +int state_backend_bucket_direct_create(struct device_d *dev, const c=
har *path,
> +=09=09=09=09       struct state_backend_storage_bucket **bucket,
> +=09=09=09=09       off_t offset, ssize_t max_size)
> +{
> +=09int fd;
> +=09struct state_backend_storage_bucket_direct *direct;
> +
> +=09fd =3D open(path, O_RDWR);
> +=09if (fd < 0) {
> +=09=09dev_err(dev, "Failed to open file '%s', %d\n", path, -errno);
> +=09=09close(fd);
> +=09=09return -errno;
> +=09}
> +
> +=09direct =3D xzalloc(sizeof(*direct));
> +=09direct->offset =3D offset;
> +=09direct->max_size =3D max_size;
> +=09direct->fd =3D fd;
> +=09direct->dev =3D dev;
> +
> +=09direct->bucket.read =3D state_backend_bucket_direct_read;
> +=09direct->bucket.write =3D state_backend_bucket_direct_write;
> +=09direct->bucket.free =3D state_backend_bucket_direct_free;
> +=09*bucket =3D &direct->bucket;
> +
> +=09return 0;
> +}
> diff --git a/common/state/backend_format_dtb.c b/common/state/backend=
_format_dtb.c
> new file mode 100644
> index 000000000000..dc19c888e5b6
> --- /dev/null
> +++ b/common/state/backend_format_dtb.c
> @@ -0,0 +1,150 @@
> +/*
> + * Copyright (C) 2012-2014 Pengutronix, Jan Luebbe <j.luebbe@pengutr=
onix.de>
> + * Copyright (C) 2013-2014 Pengutronix, Sascha Hauer <s.hauer@pengut=
ronix.de>
> + * Copyright (C) 2015 Pengutronix, Marc Kleine-Budde <mkl@pengutroni=
x.de>
> + * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.=
de>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <of.h>
> +#include <linux/kernel.h>
> +#include <malloc.h>
> +
> +#include "state.h"
> +
> +struct state_backend_format_dtb {
> +=09struct state_backend_format format;
> +
> +=09struct device_node *root;
> +
> +=09/* For outputs */
> +=09struct device_d *dev;
> +};
> +
> +static inline struct state_backend_format_dtb *get_format_dtb(struct=

> +=09=09=09=09=09=09=09      state_backend_format
> +=09=09=09=09=09=09=09      *format)
> +{
> +=09return container_of(format, struct state_backend_format_dtb, form=
at);
> +}
> +
> +static int state_backend_format_dtb_verify(struct state_backend_form=
at *format,
> +=09=09=09=09=09   uint32_t magic, const uint8_t * buf,
> +=09=09=09=09=09   ssize_t len)
> +{
> +=09struct state_backend_format_dtb *fdtb =3D get_format_dtb(format);=

> +=09struct device_node *root;
> +=09struct fdt_header *fdt =3D (struct fdt_header *)buf;
> +=09size_t dtb_len =3D fdt32_to_cpu(fdt->totalsize);
> +
> +=09if (dtb_len > len) {
> +=09=09dev_err(fdtb->dev, "Error, stored DTB length (%d) longer than =
read buffer (%d)\n",
> +=09=09=09dtb_len, len);
> +=09=09return -EINVAL;
> +=09}
> +
> +=09if (fdtb->root) {
> +=09=09of_delete_node(fdtb->root);
> +=09=09fdtb->root =3D NULL;
> +=09}
> +
> +=09root =3D of_unflatten_dtb(buf);
> +=09if (IS_ERR(root)) {
> +=09=09dev_err(fdtb->dev, "Failed to unflatten dtb from buffer with l=
ength %zd, %ld\n",
> +=09=09=09len, PTR_ERR(root));
> +=09=09return PTR_ERR(root);
> +=09}
> +
> +=09fdtb->root =3D root;
> +
> +=09return 0;
> +}
> +
> +static int state_backend_format_dtb_unpack(struct state_backend_form=
at *format,
> +=09=09=09=09=09   struct state *state,
> +=09=09=09=09=09   const uint8_t * buf, ssize_t len)
> +{
> +=09struct state_backend_format_dtb *fdtb =3D get_format_dtb(format);=

> +=09int ret;
> +
> +=09if (!fdtb->root) {
> +=09=09state_backend_format_dtb_verify(format, 0, buf, len);
>=20

=2D-=20
Pengutronix e.K.                           |                           =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |

--nextPart1714189.4ifdhD8e60
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXa3pBAAoJENnm3voMNZulfOgP/jus24GfK+NPf9W4f5fO1xro
OqKaz8szvcZSmnOLKiVN+xAWm/0TGcHdnsJ5HmkrlXIfBX8qxPs+BGU5WwuNn06m
XXvsUQKKPmw6AVQNIZrtkC+hodORL2K0JQ5E7Iaf2O8r0D/FKoAYgnpzsV3I5P8d
Xp9RxCprSr8fWA56sBQDn3CJ+ODxfebXFjEsXaQw4Ywy3GJ0HWZWAa9NM87IH3/n
nTH7AQO6pGvhCvHHD0JW2TQIxw1ANTv092MgmelHLisbcVTUEDyjlo3Yy+ECnHfQ
9i3JkfhvkT6IvQxpAUv++gdfdANkFt9+FJfUO/vItc94L9syDDXcIWzRAkDdYlqG
0rwzX2Ma+JApBnqWxvQlFpFIfmp2sYnN6ofPnEIgxloXLwLYAP93sMTr8dt+HKkY
bLt1ZsJG6cVuRkV1c+lFeRBgVmH4DBVuTISkW1NqckD5RSUhIMdAn/w2TcmL6guL
JMZGKg4DT/5ubUL5ImQbUtkF5irhpCl+kx0z8s/v3oidrZjn4XDd5FkUTWBMlnwE
WK6tOyh6PM+tcGTPCARCB+XTRItO4owgf1dKzEK1jI3kxoxr6m3TPPp4yo9dIHPV
6nxTtrrwaRhcs/ISKxdMM8ugJxrea1ZUBVGeF8V2FhpQKEsYcv0GSW6e/yTWlFYl
gaiyEtdye+Q5ookpJYEP
=sKrU
-----END PGP SIGNATURE-----

--nextPart1714189.4ifdhD8e60--



--===============7907783620467202609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7907783620467202609==--
