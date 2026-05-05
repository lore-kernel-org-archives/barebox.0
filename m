Delivery-date: Tue, 05 May 2026 14:46:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKFA1-001FGy-11
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 14:46:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKF9u-0002Wd-2p
	for lore@pengutronix.de; Tue, 05 May 2026 14:46:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3dLM8CXDrAhGQOsHNO/4Lec9o+hd2Zh7n8k05jlLQrA=; b=SVjLMFiCxolLZZUMSHrzYJ/Xwg
	rKoQVWiIllzmcppTvPxyXgGvhPe9inP5HCyKb3ZVNz9AK3Ti81H2sgYnNw0tYCFg71FU7kzmrRzWR
	VpW9FHJ+9JA52qV1nPNkkCnL6L3RTGql0BwVDZJyWiAsnVvwxaHIphlEe1W56pzWnd5xpAzgUzOA+
	nPZZvMfkludDqnv/QuSoKLUq4ny6SGAoWLqoxSaWLisLOosina24t6C/umLCujHKvs0NDSPXUjyae
	1dE1YM74c6mEmFW1n5PB28RMqoIWI4zTiYxBTMfZ22/LTLUINXZ4oJGS9V8+H/iG8yw7SG2SEeDoZ
	k21vh2xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKF9N-0000000GDei-1UxT;
	Tue, 05 May 2026 12:45:21 +0000
Received: from mail-dl1-x122c.google.com ([2607:f8b0:4864:20::122c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKF9K-0000000GDdp-2jbn
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 12:45:19 +0000
Received: by mail-dl1-x122c.google.com with SMTP id a92af1059eb24-12c8ccc7755so7313223c88.0
        for <barebox@lists.infradead.org>; Tue, 05 May 2026 05:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777985118; cv=none;
        d=google.com; s=arc-20240605;
        b=ReaXOdcaOIFg9sj8Lu2xIWX9sSI6rWdz0rbh4RBnpmp/EZaAk2e+pgCgE5GFe1Dkwj
         ROp9HkYmbt2bGn6OCXyoBlXnQ07hr7D6UItkkfQhtCkbLVVhiF1Eqg1x0b3yYxIg5a6S
         S15vACVmCn5UcPiWj+OW0Q2pBumA1DBrKfITdcbJx1EFFd1mzvFYjov5Rl7jhSRfrWvJ
         44jf7MsxyfesIF/NC5JTSd7xXDqDQeJlOEcTEBYwI/C087lRvZHj7RqEbnkSLvh37kBs
         d9OzCKEHBYpI4KagsUDu8VItL5zilt71Nd/gM1Xjt0pH6PW+I+2dDwjm8R3JyWXy0ccl
         Xa6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3dLM8CXDrAhGQOsHNO/4Lec9o+hd2Zh7n8k05jlLQrA=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=O1IzdB0LThKR6D5WnWiEe0+iOEBvdQ4oaGiL4ILOZ7SSBxSToJTFhq/yF4XXSrQDdt
         p4s3GjXsUoIAusD1qymV4vkpDvgEjT1WicOUzkMq1NSKgtZOuN5o4LbGzCg9J7gMAadp
         xvRM5dEfCYI+rvDo+fk55ntE2gL7c+qP4t3XsKy05JaBsaxc5PeoLRFvRlFH6kXQ8oSR
         NrxQQiRHPQYVztOaaDHAu2pZYRDQP/EKI0faGDswBzuO3xvhWvTohCliRS9pROpw2AcG
         Ae88MdwH8Sl+uRCNhbLz3XX56nKAsljkhgPnl1SkGHO4ETcvboq03xejZGH+GO5ATvTm
         BoTQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777985118; x=1778589918; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3dLM8CXDrAhGQOsHNO/4Lec9o+hd2Zh7n8k05jlLQrA=;
        b=JJZN1wJq+Hn3+wZjcivfN0NBBuG9mfCRPNxzne9tRuAv+VdGGX53/plaY41Sczmwbc
         x0jptRTpm1Mwp6hcFn5Sbrg10liA/QP6Yp8upWxzVLWR+ryxgtv7R6zjS3wodc6A7GXh
         QuGphgof+tWlR9RTzABoyZ1QSTCQRBSC9AVxlyGwLjI9Gemuc5lWTBj0geI06SfhnU2g
         BVB66Z5gqr1KATf3C4wmQWVtNaDRyDfrH/dXlxsMTKhY83JdFBYkm4DVLFgCB+BmDKxv
         vVG/1GcqP0lrAD57Reu9OCPqBCE//86YDxOkQufO0jIj+wMyaWfEFJD9bJHoPxT1PLGx
         VtBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777985118; x=1778589918;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3dLM8CXDrAhGQOsHNO/4Lec9o+hd2Zh7n8k05jlLQrA=;
        b=An+VmKnsuXee7kPRuzGz2Hbg/uzTMLuW3LL5/SnIQXJkBlSv7UmQWyHdSn4JLvB9XP
         Ssijzod3P4OXDewqPhkoviGEjkRKVC2rj96t+hNz3TQ5MaeiW5sENvBSKEErj3W+nt4B
         QxoALpag3srtw8futwa/emTkAHgy0n2zx1ohBV8uiERpBbX/TnTfGhNAJ3QGHyK+yJi+
         mzLF1bwPyHppi04z1GWYafPtHmbNvevaHupwLyqAn1XqpvDwO1mEq8j2km1Y9a4uYnuL
         Y559DWwv6vGxsw0JZwoFTK4xtKMpKTJC/SgL6bagws8n7WqWaXo8NwbSgkcrm5fgd/fy
         aUeQ==
X-Gm-Message-State: AOJu0Yz31NJBRtghMWFt8smkDGK7+wLd8xCHKXWZMB+P5Xp8qt7VaEf6
	lCAotdiODWCdLgtU0xeVyajEREqHPPonwS7XwxLgQVD1ZRUT/a+E7/0iiaZ0xhCUGeYtAxGAeNs
	MJg1fcuhEqRSzU/Qvp93wFFYPIbbK4vzJ3NHydOPKfEFb
X-Gm-Gg: AeBDietsGDLC5c3DpZ9ij38WOaijrdoAhaHfHg032a6IyHaLymnqs6cHP54zlmeTX5W
	L71Mi4IEsu5gE0pMuJ9HzGwpshVhjML+tX8iV0CUcdrnmHTMarkfqpBwmKcD+1ZhTl8ZS6LeaHU
	b1Obu7S2eR1n4eEtSP5t56EaIxt1m+g80QSYWEU+BYTc+OEoEJUoCR5E6GLc/bfjjyF9eIg04Xi
	kViZ2JTqhPPhrtcvRhhUdRY005MgBgiockktowpbYljSZ8fVx9OTR8fb7bgxCFdOKothfl79nUN
	ucswX1+PbunSnuDNw1Q=
X-Received: by 2002:a05:7022:6626:b0:128:cc34:35fc with SMTP id
 a92af1059eb24-12dfd7d1a1amr5975360c88.16.1777985117520; Tue, 05 May 2026
 05:45:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260505095137.1123867-1-a.fatoum@pengutronix.de> <20260505095137.1123867-4-a.fatoum@pengutronix.de>
In-Reply-To: <20260505095137.1123867-4-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 5 May 2026 15:45:06 +0300
X-Gm-Features: AVHnY4LGQpvgYpT6c9CBhB3ctAG2mTPS1cyMo0_LbPO2XXDQobhowtWbajDxkPI
Message-ID: <CAP1tNvTAV4Mu5QR3y3ZvF+-fT8Q41Ea1BphOo==4qK7ks2zSGA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_054518_700712_5C9B8626 
X-CRM114-Status: GOOD (  32.85  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,WEIRD_QUOTING
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] bootm: append automatic parameters after all other linux.bootargs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 12:51, Ahmad=
 Fatoum <a.fatoum@pengutronix.de>:
>
> bootm can be configured to determine suitable values for a number of
> kernel command line options that will automatically be fixed up.
>
> Currently, these options are concatenated into the kernel command line
> interleaved with all other options in the lexicographical order of the
> linux.bootargs. parameter name.
>
> For the root=3D option, this means that any root=3D in a blspec file for
> example will override barebox' own root=3D, because:
>
>   global.linux.bootargs.bootm.root < global.linux.bootargs.dyn.bootentrie=
s
>
> The other way makes more sense however, especially as there is always a
> device parameter or Kconfig option to control whether the fixup should
> happen at all.
>
> With the new order, it's now possible to set global.bootm.appendroot=3D1
> and have barebox append a new root=3D and have it take precedence over a
> bootloader spec provided root=3D. To reflect that this has occurred, the
> kernel command-line will continue to list two root=3D's, which greatly
> simplifies debugging if issues happen (e.g. because there was a
> rootfstype that is no longer accurate).
>
> This commit doesn't add any LINUX_BOOTARGS_BOOTM_EARLY as it's not yet
> needed. Still it lays out how it could look like in future.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../migration-guides/migration-master.rst     |  9 +++++++
>  Documentation/user/booting-linux.rst          | 24 +++++++++++++++--
>  common/bootm.c                                | 26 ++++++++++++++-----
>  3 files changed, 50 insertions(+), 9 deletions(-)
>
> diff --git a/Documentation/migration-guides/migration-master.rst b/Docume=
ntation/migration-guides/migration-master.rst
> index 5be4659d5b3d..f6d193417f1d 100644
> --- a/Documentation/migration-guides/migration-master.rst
> +++ b/Documentation/migration-guides/migration-master.rst
> @@ -31,3 +31,12 @@ Scripts that **read** the parameter will now receive `=
`"disabled"`` or
>  ``"enabled"`` instead of ``"0"`` or ``"1"``.
>
>  Scripts that **write** ``"0"`` or ``"1"`` continue to work.
> +
> +global.linux.bootargs.* appending order
> +---------------------------------------
> +
> +If barebox was configured to automatically generate any of the ``root``,
> +``rootwait``, ``earlycon``, ``systemd.machine_id``, ``systemd.hostname``
> +or ``barebox.security.policy`` kernel command line options, they will be
> +appended onto the final kernel command line
> +:ref:`**after** all other options <bootargs_concat_order>`.
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/bo=
oting-linux.rst
> index cc0bdb4661ca..7bbb79ecdfc2 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -89,14 +89,34 @@ with ``global.linux.bootargs.`` will be concatenated =
to the bootargs:
>
>  .. code-block:: sh
>
> +  global linux.bootargs.Loglevel=3D"ignore_loglevel"
>    global linux.bootargs.base=3D"console=3DttyO0,115200"
> -  global linux.bootargs.debug=3D"earlyprintk ignore_loglevel"
> +  global linux.bootargs.debug=3D"earlyprintk"
>
>    bootm zImage
>
>    ...
>
> -  Kernel command line: console=3Dttymxc0,115200n8 earlyprintk ignore_log=
level
> +  Kernel command line: ignore_loglevel console=3DttyO0,115200 earlyprint=
k
> +
> +.. _bootargs_concat_order:
> +
> +Concatenation order
> +"""""""""""""""""""
> +
> +The kernel command line arguments are concatenated in lexicographical or=
der of
> +their ``linux.bootargs.``-prefixed parameter names.
> +
> +Kernel command line arguments that barebox generates internally are not
> +interleaved with externally provided command-line arguments:
> +
> +* Following arguments will be concatenated **after** all other options:
> +  * ``root=3D`` and ``rootwait=3D`` controlled by :ref:`global.bootm.app=
endroot <magicvar_global_bootm_appendroot>`
> +    :ref:`global.linux.rootwait <magicvar_global_linux_rootwait>`
> +  * ``earlycon=3D`` controlled by :ref:`global.bootm.earlycon <magicvar_=
global_bootm_earlycon>`
> +  * ``systemd.machine_id=3D`` controlled by :ref:`global.bootm.provide_m=
achine_id <magicvar_global_bootm_provide_machine_id>`
> +  * ``systemd.hostname=3D`` controlled by :ref:`global.bootm.provide_hos=
tname <magicvar_global_bootm_provide_hostname>`
> +  * ``barebox.security.policy=3D`` controlled by :ref:`global.bootm.prov=
ide_policy <magicvar_global_bootm_provide_policy>`
>
>  Creating root=3D options for the Kernel
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> diff --git a/common/bootm.c b/common/bootm.c
> index c7bf414effa4..26465875ad94 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -22,6 +22,19 @@
>  #include <security/config.h>
>  #include <security/policy.h>
>
> +/*
> + * All device parameter iteration happens in lexicographical order.
> + * To ensure that bootm options are consistently applied before or after
> + * other options from the environment or boot configuration files, we
> + * employ following convention for the prefix:
> + *
> + *   !         0x21 is less than any non-space printable character
> + *   ~         0x7e is greater than any printable character
> + *
> + * Users will never see those as bootm_boot_cleanup() will delete them a=
gain.
> + */
> +#define LINUX_BOOTARGS_BOOTM_LATE      "linux.bootargs.~bootm."
> +
>  static LIST_HEAD(handler_list);
>  static struct sconfig_notifier_block sconfig_notifier;
>
> @@ -650,7 +663,7 @@ struct image_data *bootm_boot_prep(const struct bootm=
_data *bootm_data)
>
>                         rootarg =3D format_root_bootarg(bootm_data->root_=
param, root, rootopts);
>                         pr_info("Adding \"%s\" to Kernel commandline\n", =
rootarg);
> -                       globalvar_add_simple("linux.bootargs.bootm.append=
root",
> +                       globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "a=
ppendroot",
>                                              rootarg);
>                         free(rootarg);
>                 }
> @@ -672,7 +685,7 @@ struct image_data *bootm_boot_prep(const struct bootm=
_data *bootm_data)
>                         earlycon =3D "earlycon";
>
>                 pr_info("Adding \"%s\" to Kernel commandline\n", earlycon=
);
> -               globalvar_add_simple("linux.bootargs.bootm.earlycon", ear=
lycon);
> +               globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "earlycon"=
, earlycon);
>         }
>
>         if (bootm_data->provide_machine_id) {
> @@ -686,7 +699,7 @@ struct image_data *bootm_boot_prep(const struct bootm=
_data *bootm_data)
>                 }
>
>                 machine_id_bootarg =3D basprintf("systemd.machine_id=3D%s=
", machine_id);
> -               globalvar_add_simple("linux.bootargs.machine_id", machine=
_id_bootarg);
> +               globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "machine_i=
d", machine_id_bootarg);
>                 free(machine_id_bootarg);
>         }
>
> @@ -714,7 +727,7 @@ struct image_data *bootm_boot_prep(const struct bootm=
_data *bootm_data)
>                                              hostname, suffix ? "-" : "",
>                                              suffix ?: "");
>
> -               globalvar_add_simple("linux.bootargs.hostname", hostname_=
bootarg);
> +               globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "hostname"=
, hostname_bootarg);
>                 free(hostname_bootarg);
>         }
>
> @@ -729,7 +742,7 @@ struct image_data *bootm_boot_prep(const struct bootm=
_data *bootm_data)
>                 }
>
>                 policy_bootargs =3D basprintf("barebox.security.policy=3D=
%s", active_policy->name);
> -               globalvar_add_simple("linux.bootargs.dyn.policy", policy_=
bootargs);
> +               globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "policy", =
policy_bootargs);
>                 free(policy_bootargs);
>         }
>
> @@ -792,8 +805,7 @@ void bootm_boot_cleanup(struct image_data *data)
>         if (data->of_root_node)
>                 of_delete_node(data->of_root_node);
>
> -       globalvar_remove("linux.bootargs.bootm.earlycon");
> -       globalvar_remove("linux.bootargs.bootm.appendroot");
> +       globalvar_remove(LINUX_BOOTARGS_BOOTM_LATE  "*");
>         free(data->os_header);
>         free(data->os_file);
>         free(data->oftree_file);
> --
> 2.47.3
>


