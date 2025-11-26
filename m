Delivery-date: Wed, 26 Nov 2025 12:30:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vODix-0053gu-0H
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 12:30:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vODiw-0001BG-Dx
	for lore@pengutronix.de; Wed, 26 Nov 2025 12:30:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RidGBBTXvZpRKoraY74LJldbN6rueG6Lr1GCj047hCc=; b=XsjPTcxombx9UbiKRvgYVzleKE
	/7wBsA6c5p3tFMuUl761/1B3GeSjHI6gcWHmllacG2HSsYxNvofNSPPDPH+sxXTOp8Bkul0V+LyaH
	WAu4BhmjU4sjCT9GCdNQy9NJtpWe5s+AUUxLR2s5lHyNy4L51RiSYXGe1DjbGemC9MQCVH6onWcAu
	IvOrXMauiAmf7oH3Mgo05DRMdWwARAqDxZEVmXYOL8UK9K/ZH2VW5UyeOTF0g8QZHcaANA9obt8o3
	epe8VvZw3GpFBtXFlKk53AjEVqeIeeIf1YLzoLmo8E7XLMlPLhDSi17di2k/1NUROiI1j9QC0sVDD
	g3oaUhTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODiR-0000000EuiF-3pbi;
	Wed, 26 Nov 2025 11:29:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODiP-0000000EuhH-02aV
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 11:29:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vODiM-000147-1J; Wed, 26 Nov 2025 12:29:38 +0100
Message-ID: <53f649d5cc950aaaadbfae828244e872b3d0688c.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Wed, 26 Nov 2025 12:29:37 +0100
In-Reply-To: <4b5b8672-ce9b-48d4-992b-e6db018d55b4@pengutronix.de>
References: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
	 <20251126064710.3721039-1-f.pflug@pengutronix.de>
	 <20251126064710.3721039-4-f.pflug@pengutronix.de>
	 <4b5b8672-ce9b-48d4-992b-e6db018d55b4@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_032941_306723_7803799B 
X-CRM114-Status: GOOD (  24.19  )
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
Subject: Re: [PATCH 3/4] bootm: use new api to get kernel command line params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey :)

On Wed, 2025-11-26 at 11:25 +0100, Ahmad Fatoum wrote:
>=20
> On 11/26/25 7:42 AM, Fabian Pflug wrote:
> > Getting root device adn root kernel options seperatily any combining
>=20
> device and root kernel options seperatly and combining
>=20
> > them in this function instead of getting the full string from the helpe=
r
> > functions. This is in preperation for replacing the root=3D string in t=
he
>=20
> preparation
>=20
> > kernel commandline with something defined during runtime.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0common/bootm.c | 34 ++++++++++++++++++++--------------
> > =C2=A01 file changed, 20 insertions(+), 14 deletions(-)
> >=20
> > diff --git a/common/bootm.c b/common/bootm.c
> > index 17792b2a1d..5d7dc00e3e 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -4,6 +4,7 @@
> > =C2=A0#include <bootm.h>
> > =C2=A0#include <bootm-overrides.h>
> > =C2=A0#include <fs.h>
> > +#include <fcntl.h>
> > =C2=A0#include <malloc.h>
> > =C2=A0#include <memory.h>
> > =C2=A0#include <block.h>
> > @@ -841,33 +842,38 @@ int bootm_boot(struct bootm_data *bootm_data)
> > =C2=A0	}
> > =C2=A0
> > =C2=A0	if (bootm_data->appendroot) {
> > -		char *rootarg;
> > +		char *root;
> > +		char *rootopts;
> > =C2=A0
> > =C2=A0		if (bootm_data->root_dev) {
> > =C2=A0			const char *root_dev_name =3D devpath_to_name(bootm_data->root=
_dev);
> > =C2=A0			struct cdev *root_cdev =3D cdev_open_by_name(root_dev_name, O_=
RDONLY);
> > =C2=A0
> > -			rootarg =3D cdev_get_linux_rootarg(root_cdev);
> > -			if (!rootarg) {
> > -				rootarg =3D ERR_PTR(-EINVAL);
> > -
> > -				if (!root_cdev)
> > -					pr_err("no cdev found for %s, cannot set root=3D option\n",
> > -						root_dev_name);
> > -				else if (!root_cdev->partuuid[0])
> > -					pr_err("%s doesn't have a PARTUUID, cannot set root=3D option\n",
> > -						root_dev_name);
>=20
> This warning is useful, because it's very confusing otherwise when a MBR
> disk image is created without a NT signature.
>=20
> > -			}
> > +			cdev_get_linux_root_and_opts(root_cdev, &root, &rootopts);
> > =C2=A0
> > =C2=A0			if (root_cdev)
> > =C2=A0				cdev_close(root_cdev);
> > +			else
> > +				pr_err("no cdev found for %s, cannot set root=3D option\n", root_d=
ev_name);
> > =C2=A0		} else {
> > -			rootarg =3D path_get_linux_rootarg(data->os_file);
>=20
> path_get_linux_rootarg() is stale now right? Can you squash its removal
> into the patch that gets rid of linux.bootargs?

Then we would have a case, where the function is used, but not available an=
ymore resulting in an unbuildable system,
which I would like to avoid. I can remove it in an extra commit after this =
one.

>=20
> > +			struct fs_device *fsdev =3D get_fsdevice_by_path(AT_FDCWD, data->os=
_file);
> > +			if(fsdev)
> > +				fsdev_get_linux_root_options(fsdev, &root, &rootopts);
> > +			else
> > +				pr_err("no fsdevice under path: %s\n", data->os_file);
> > =C2=A0		}
> > =C2=A0
> > -		if (IS_ERR(rootarg)) {
> > +		if (!root) {
> > =C2=A0			pr_err("Failed to append kernel cmdline parameter 'root=3D'\n"=
);
> > =C2=A0		} else {
> > +			char *rootarg;
> > +			if(rootopts) {
> > +				rootarg =3D xasprintf("root=3D%s %s", root, rootopts);
> > +				free(rootopts);
> > +			} else {
> > +				rootarg =3D xasprintf("root=3D%s", root);
> > +			}
>=20
> I wonder if we should add a helper into a header that does this, given
> how many times this is repeated...
>=20
> char *format_root_bootarg(char *root, char *rootopts);
>=20
> which consumes (and frees) two pointers and returns a new buffer..

Good thinking. But where do we add it?
* fs.h
* block.h
* bootargs.h

And also, do we add a third parameter? because I will re replaced in the ne=
xt commit with "%s=3D%s %s"

And since you proposed to get rid of path_get_linux_rootarg it will be used=
 with two parameters in one place
(cdev_get_linux_rootarg) and with three at the other. (bootm_boot)

Kind regard
Fabian


>=20
> Cheers,
> Ahmad
>=20
> > +			free(root);
> > =C2=A0			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
> > =C2=A0			globalvar_add_simple("linux.bootargs.bootm.appendroot",
> > =C2=A0					=C2=A0=C2=A0=C2=A0=C2=A0 rootarg);


