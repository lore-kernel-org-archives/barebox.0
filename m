Delivery-date: Tue, 25 Nov 2025 11:23:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNqCl-004hMb-1N
	for lore@lore.pengutronix.de;
	Tue, 25 Nov 2025 11:23:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNqCk-0007wA-Bs
	for lore@pengutronix.de; Tue, 25 Nov 2025 11:23:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sJivLXwXIOaln6y5xHlPXrO/0ddEeCHmyc1vE/3mEHM=; b=hx9r5D5sk4T2heLUUkM6z4k+kL
	5/jEidZCHKpp1o0OGSp1yk0mgdKMf8VrkR7bJSAbv+Rz8A+/UarlzVQxLjvxnHF6fQposOwTp/ky/
	PCKPNSq9+j0z7t/4yaUXWfh+pfxNxUfdPbfTCqJ9m89BTJvaWqV1XfWyUD8L3xBkr/HMhBCQsXHBo
	DiDok/klqXdX1Dj2WK9rV3QXZBRkrrau9n5+KRsCw673aSmvGH1KdOCWZEs5Ti+7T1ycp6/jAV5nz
	U5UGFJzWesQnBMXnV/f8SWR2VJUpcCBGsjOnTOClWlHfIqkjNF79H6VQARsXdXV02hg0d6+GrHW+k
	4TYjUFZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNqC4-0000000D7U9-2de0;
	Tue, 25 Nov 2025 10:22:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNqC0-0000000D7SH-3vZM
	for barebox@lists.infradead.org;
	Tue, 25 Nov 2025 10:22:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vNqBx-0007n3-AE; Tue, 25 Nov 2025 11:22:37 +0100
Message-ID: <3072b12f7bea62c20f23064570d2a8cec966d2fa.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 25 Nov 2025 11:22:37 +0100
In-Reply-To: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
References: <20251124101631.3467908-1-f.pflug@pengutronix.de>
	 <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_022241_130659_1BC9556B 
X-CRM114-Status: GOOD (  41.80  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: setting the root= command line parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey :)

On Mon, 2025-11-24 at 13:00 +0100, Ahmad Fatoum wrote:
> Hi Fabian,
>=20
> On 11/24/25 11:16 AM, Fabian Pflug wrote:
> > In verified boot settings, it might not be wanted to have a root=3D
> > command line parameter for the kernel, because if the initramfs is not
> > configured, or barebox boots the kernel directly due to
> > misconfiguration, the device might boot correctly, but without verified
> > boot, because the kernel will parse root=3D
> >=20
> > Allowing to change the parameter name will help circumvent such errors,
> > as there now needs to be multiple misconfigurations for the verified
> > boot to go wrong and the initramfs can use a the different name from th=
e
> > commandline to get the rootfs.
>=20
> Thanks for your patch!
>=20
> This is a useful thing to have, but I think deciding replacement of
> root=3D across all functionality at compile-time is too invasive:
>=20
> Imagine you use the same barebox both for development and in release
> mode (or you support runtime unlocking with a token).
> When booting securely, you want to use verity_root=3D for example, but
> when you do boot /mnt/nfs, you'll want barebox to fix up root=3D as befor=
e.
>=20
> I thus think that this should be a $global.bootm.root_arg evaluated at
> runtime instead.
>=20
> By adding it to bootm_data_restore_defaults(), its value will then be
> restored after the boot script has done executing.
>=20
> What do you think?


Do you want to have string-replacement in bootm, or should all of them quer=
y the value for root_arg?

Are you thinking something along the lines of:

--- a/common/bootm.c
+++ b/common/bootm.c
@@ -868,6 +868,11 @@ int bootm_boot(struct bootm_data *bootm_data)
                if (IS_ERR(rootarg)) {
                        pr_err("Failed to append kernel cmdline parameter '=
root=3D'\n");
                } else {
+                       if (bootm_data->prefix_root) {
+                               char* rootarg_old =3D rootarg;
+                               rootarg =3D xasprintf("%s%s",bootm_data->pr=
efix_root, rootarg+5);
+                               free(rootarg_old);
+                       }
                        pr_info("Adding \"%s\" to Kernel commandline\n", ro=
otarg);
                        globalvar_add_simple("linux.bootargs.bootm.appendro=
ot",
                                             rootarg);


This could work as a hack, but it does seem error-prone.

Kind regards
Fabian

>=20
> Cheers,
> Ahmad
>=20
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0common/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | =
13 +++++++++++++
> > =C2=A0common/block.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 3 +--
> > =C2=A0common/bootm.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 8 ++++----
> > =C2=A0drivers/mci/mci-core.c |=C2=A0 2 +-
> > =C2=A0fs/9p/vfs_super.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
> > =C2=A0fs/nfs.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
> > =C2=A0fs/squashfs/squashfs.c |=C2=A0 2 +-
> > =C2=A0fs/ubifs/ubifs.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
> > =C2=A08 files changed, 23 insertions(+), 11 deletions(-)
> >=20
> > diff --git a/common/Kconfig b/common/Kconfig
> > index d923d4c4b6..62797a9e69 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -1252,6 +1252,19 @@ config SERIAL_NUMBER_FIXUP_SYSTEMD_HOSTNAME
> > =C2=A0	=C2=A0 This option without effect if global.bootm.provide_hostna=
me
> > =C2=A0	=C2=A0 is unset.
> > =C2=A0
> > +config ROOT_COMMANDLINE_PARAMETER
> > +	string "parameter name for root partition"
> > +	default "root"
> > +	help
> > +	=C2=A0 When setting the root partition on the commandline string to t=
he os, use
> > +	=C2=A0 this name as an indicator of the root partition.
> > +
> > +	=C2=A0 Changing this could be useful in verified boot contexts to not=
 give the
> > +	=C2=A0 kernel the chance to boot a non-secure image, but still use th=
e power of
> > +	=C2=A0 barebox to get the right disk for the rootfs.
> > +
> > +	=C2=A0 If unsure, leave as default (root)
> > +
> > =C2=A0config SYSTEMD_OF_WATCHDOG
> > =C2=A0	bool "inform devicetree-enabled kernel of used watchdog"
> > =C2=A0	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
> > diff --git a/common/block.c b/common/block.c
> > index ca2ed37dbd..bb8b01c0a0 100644
> > --- a/common/block.c
> > +++ b/common/block.c
> > @@ -601,11 +601,10 @@ char *cdev_get_linux_rootarg(const struct cdev *p=
artcdev)
> > =C2=A0	if (blk->ops->get_rootarg)
> > =C2=A0		rootarg =3D blk->ops->get_rootarg(blk, partcdev);
> > =C2=A0	if (!rootarg && partcdev->partuuid[0] !=3D 0)
> > -		rootarg =3D basprintf("root=3DPARTUUID=3D%s", partcdev->partuuid);
> > +		rootarg =3D basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=3DPARTUUID=
=3D%s", partcdev->partuuid);
> > =C2=A0
> > =C2=A0	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG) && blk->rootwait)
> > =C2=A0		rootarg =3D linux_bootargs_append_rootwait(rootarg);
> > =C2=A0
> > =C2=A0	return rootarg;
> > =C2=A0}
> > -
> > diff --git a/common/bootm.c b/common/bootm.c
> > index 17792b2a1d..4549bfeb8b 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -852,10 +852,10 @@ int bootm_boot(struct bootm_data *bootm_data)
> > =C2=A0				rootarg =3D ERR_PTR(-EINVAL);
> > =C2=A0
> > =C2=A0				if (!root_cdev)
> > -					pr_err("no cdev found for %s, cannot set root=3D option\n",
> > +					pr_err("no cdev found for %s, cannot set "
> > CONFIG_ROOT_COMMANDLINE_PARAMETER "=3D option\n",
> > =C2=A0						root_dev_name);
> > =C2=A0				else if (!root_cdev->partuuid[0])
> > -					pr_err("%s doesn't have a PARTUUID, cannot set root=3D option\n",
> > +					pr_err("%s doesn't have a PARTUUID, cannot set "
> > CONFIG_ROOT_COMMANDLINE_PARAMETER "=3D option\n",
> > =C2=A0						root_dev_name);
> > =C2=A0			}
> > =C2=A0
> > @@ -866,7 +866,7 @@ int bootm_boot(struct bootm_data *bootm_data)
> > =C2=A0		}
> > =C2=A0
> > =C2=A0		if (IS_ERR(rootarg)) {
> > -			pr_err("Failed to append kernel cmdline parameter 'root=3D'\n");
> > +			pr_err("Failed to append kernel cmdline parameter '" CONFIG_ROOT_CO=
MMANDLINE_PARAMETER
> > "=3D'\n");
> > =C2=A0		} else {
> > =C2=A0			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
> > =C2=A0			globalvar_add_simple("linux.bootargs.bootm.appendroot",
> > @@ -1165,7 +1165,7 @@ BAREBOX_MAGICVAR(global.bootm.dryrun, "bootm defa=
ult dryrun level");
> > =C2=A0BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level=
");
> > =C2=A0BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity l=
evel (0=3Dquiet)");
> > =C2=A0BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to K=
ernel for early log output");
> > -BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root=3D option to Kerne=
l to mount rootfs from the device the Kernel
> > comes from (default, device can be overridden via global.bootm.root_dev=
)");
> > +BAREBOX_MAGICVAR(global.bootm.appendroot, "Add " CONFIG_ROOT_COMMANDLI=
NE_PARAMETER "=3D option to Kernel to mount
> > rootfs from the device the Kernel comes from (default, device can be ov=
erridden via global.bootm.root_dev)");
> > =C2=A0BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root devic=
e (overrides default device in
> > global.bootm.appendroot)");
> > =C2=A0BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, appen=
d systemd.machine_id=3D$global.machine_id to Kernel
> > command line");
> > =C2=A0BAREBOX_MAGICVAR(global.bootm.provide_hostname, "If true, append =
systemd.hostname=3D$global.hostname to Kernel
> > command line");
> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index 57825bc849..79cebe19f3 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -2691,7 +2691,7 @@ static char *mci_get_linux_mmcblkdev(struct block=
_device *blk,
> > =C2=A0		 * skipping it.
> > =C2=A0		 */
> > =C2=A0		if (cdev_partname_equal(partcdev, cdev))
> > -			return basprintf("root=3D/dev/mmcblk%dp%d", id, partnum);
> > +			return basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=3D/dev/mmcblk%=
dp%d", id, partnum);
> > =C2=A0		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
> > =C2=A0			partnum++;
> > =C2=A0	}
> > diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
> > index 6a451d9ef5..39a8529a4e 100644
> > --- a/fs/9p/vfs_super.c
> > +++ b/fs/9p/vfs_super.c
> > @@ -70,7 +70,7 @@ static void v9fs_set_rootarg(struct v9fs_session_info=
 *v9ses,
> > =C2=A0	trans =3D v9ses->clnt->trans_mod->name;
> > =C2=A0	path =3D v9ses->aname;
> > =C2=A0
> > -	str =3D basprintf("root=3D%s rootfstype=3D9p rootflags=3Dtrans=3D%s,m=
size=3D%d,"
> > +	str =3D basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=3D%s rootfstype=
=3D9p rootflags=3Dtrans=3D%s,msize=3D%d,"
> > =C2=A0			"cache=3Dloose,uname=3D%s,dfltuid=3D0,dfltgid=3D0,aname=3D%s",
> > =C2=A0			tag, trans, v9ses->clnt->msize, tag, path);
> > =C2=A0
> > diff --git a/fs/nfs.c b/fs/nfs.c
> > index 5c2476cd88..9db23c5d18 100644
> > --- a/fs/nfs.c
> > +++ b/fs/nfs.c
> > @@ -1558,7 +1558,7 @@ static void nfs_set_rootarg(struct nfs_priv *npri=
v, struct fs_device *fsdev)
> > =C2=A0	char *str, *tmp;
> > =C2=A0	const char *bootargs;
> > =C2=A0
> > -	str =3D basprintf("root=3D/dev/nfs nfsroot=3D%pI4:%s%s%s", &npriv->se=
rver, npriv->path,
> > +	str =3D basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=3D/dev/nfs nfsr=
oot=3D%pI4:%s%s%s", &npriv->server, npriv-
> > >path,
> > =C2=A0			=C2=A0 rootnfsopts[0] ? "," : "", rootnfsopts);
> > =C2=A0
> > =C2=A0	/* forward specific mount options on demand */
> > diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
> > index e30372627a..8267e3cba0 100644
> > --- a/fs/squashfs/squashfs.c
> > +++ b/fs/squashfs/squashfs.c
> > @@ -60,7 +60,7 @@ static void squashfs_set_rootarg(struct fs_device *fs=
dev)
> > =C2=A0	ubi_get_device_info(vi.ubi_num, &di);
> > =C2=A0	mtd =3D di.mtd;
> > =C2=A0
> > -	str =3D basprintf("root=3D/dev/ubiblock%d_%d ubi.mtd=3D%s ubi.block=
=3D%d,%d rootfstype=3Dsquashfs",
> > +	str =3D basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=3D/dev/ubiblock=
%d_%d ubi.mtd=3D%s ubi.block=3D%d,%d
> > rootfstype=3Dsquashfs",
> > =C2=A0			vi.ubi_num, vi.vol_id, mtd->cdev.partname, vi.ubi_num, vi.vol_=
id);
> > =C2=A0
> > =C2=A0	fsdev_set_linux_rootarg(fsdev, str);
> > diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
> > index 37986acbb2..34151a0c9f 100644
> > --- a/fs/ubifs/ubifs.c
> > +++ b/fs/ubifs/ubifs.c
> > @@ -442,7 +442,7 @@ static void ubifs_set_rootarg(struct ubifs_priv *pr=
iv,
> > =C2=A0
> > =C2=A0	mtd =3D di.mtd;
> > =C2=A0
> > -	str =3D basprintf("root=3Dubi0:%s ubi.mtd=3D%s rootfstype=3Dubifs",
> > +	str =3D basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=3Dubi0:%s ubi.m=
td=3D%s rootfstype=3Dubifs",
> > =C2=A0			=C2=A0 vi.name, mtd->cdev.partname);
> > =C2=A0
> > =C2=A0	fsdev_set_linux_rootarg(fsdev, str);


