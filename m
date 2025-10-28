Delivery-date: Tue, 28 Oct 2025 14:48:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDk4E-00ChbF-35
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 14:48:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDk4E-0005nn-BH
	for lore@pengutronix.de; Tue, 28 Oct 2025 14:48:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qiZNOYQI/LLlc0iZfL/NJJQlmV4wRVdPtb4UsjIgKyM=; b=LfypGoFueMpTNv3Wy4HJgFnJIY
	1pFHn5Kpdo2sSEUVIFsthpQQvo/z9a9T1YLy65UcF0Ebjb9tBZtSNtnZtbsHnA6q32ztHke8bGNcm
	U3Ka+AD69ZARMgeS7KSIEmmVi+/Od9NTCoA+Vkxwf31K5FJAN2zq6Se9uYg4ab9l1rtIUBSf+UluZ
	KBMcbowZlL9/11UdjEHLo+wG4XgwOJO5djrXkt2IpCT2z7qjIMfEYaF/TR5+LQQxvo1C+2TF3fBYv
	iGKxYPay2YAv7f3IDVp2CX4vhViOfbK2kR+dfYRaFU3v8TTMDPg/ibsyYrnnwk/uNH21bA00EyVVk
	jl1HJ5CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDk3j-0000000G23x-0Tsh;
	Tue, 28 Oct 2025 13:48:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDk3i-0000000G23f-1vxd
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 13:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=qiZNOYQI/LLlc0iZfL/NJJQlmV4wRVdPtb4UsjIgKyM=; b=DBdhoOtKmsUkSkgSRMbTRquCco
	gbP6legloNG6kMQOusFPgbAt1ehok+RQk3DvLfk5eWA27EBnZc15N11MbOKtWFxj83tcfp9XmOA68
	+peFDYilZO5cNazCXsej8n57a21+Mnsp5UOF3MLR1D7FuJ/tW0sKpXzsTYeAYcg43JGLkrLEhp/Nn
	yxAB84gRgPXeM5evpXrArWCx1lijzHqsytlg0o65NWYUPIT43dV6nM+WIMjIvrIBu7BmlTLKZwSNq
	IEK15IjuHzBjZS+OIzfQmH6YiS7Mrsc0GnSNkgbX9B/KnGKr4EcjosKRVrQ80sv3Cyag0t3vFPJLr
	jbrmxgjQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDjBv-00000004TVY-07aP
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 12:52:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vDk3b-0005hV-Ch; Tue, 28 Oct 2025 14:48:15 +0100
Message-ID: <e78f9ef3ee79828a6808820d9e583d29abe3639b.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 28 Oct 2025 14:48:15 +0100
In-Reply-To: <2f1a2a5a-1c70-4bdc-a84f-8e76761deca8@pengutronix.de>
References: <20251028121820.1242298-1-f.pflug@pengutronix.de>
	 <20251028121820.1242298-3-f.pflug@pengutronix.de>
	 <2f1a2a5a-1c70-4bdc-a84f-8e76761deca8@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_125247_104114_BE4697F8 
X-CRM114-Status: GOOD (  25.08  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] startup: mount ps only on policy FS_EXTERNAL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey :)

On Tue, 2025-10-28 at 13:56 +0100, Ahmad Fatoum wrote:
> Hi,
>=20
> On 10/28/25 1:18 PM, Fabian Pflug wrote:
> > Without the SCONFIG_FS_EXTERNAL, the bus of the driver for pstore will
> > not load, resulting in a missing driver for pstore and an error during
> > bootup.
> > Only mount the /pstore if FS_EXTERNAL is allowed by the security policy=
.
> > > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0common/startup.c | 22 ++++++++++++++++++++--
> > =C2=A01 file changed, 20 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/common/startup.c b/common/startup.c
> > index ea5436afa6..f16a99f7e4 100644
> > --- a/common/startup.c
> > +++ b/common/startup.c
> > @@ -55,6 +55,19 @@ extern exitcall_t __barebox_exitcalls_start[], __bar=
ebox_exitcalls_end[];
> > =C2=A0enum system_states barebox_system_state;
> > =C2=A0
> > =C2=A0#if defined CONFIG_FS_RAMFS && defined CONFIG_FS_DEVFS
> > +static struct sconfig_notifier_block sconfig_notifier;
> > +static void u_mount_pstore(struct sconfig_notifier_block *nb,
> > +			=C2=A0=C2=A0 enum security_config_option opt, bool allowed)
> > +{
> > +	if (allowed) {
> > +		mkdir("/pstore", 0);
>=20
> I think we should create the directory unconditionally without paying
> respect to whether we can mount or not.

I think that could irritate people into thinking, that there is nothing ins=
ide the pstore.
When there is no /pstore directory, it is clear, that the mount is not ther=
e and one gets to wonder why and what happens
here instead of chasing around, why the pstore is empty.

>=20
> > +		mount("none", "pstore", "/pstore", NULL);
> > +	} else {
> > +		umount("/pstore");
>=20
> The harm is already done when loosening security mode, so I don't think
> we want to start unmounting things.

That I can do. :)

>=20
> As mentioned, I'd prefer replacing SCONFIG_FS_EXTERNAL altogether with a
> whitelist of mounts, so common code calls:
>=20
> =C2=A0 allow_mount("none", "ramfs", "/", NULL);
> =C2=A0 allow_mount("none", "devfs", "/dev", NULL);
>=20
> and board code can call:
>=20
> =C2=A0 allow_mount("non", "pstore", "/pstore", NULL);
>=20
> and we won't need any special handling here. Waiting to see what Sascha
> thinks.


I see your Idea and think this could be good, but also need something fast =
for me now and this works in that regard. I
see yours as a long term solution that is a bit more complicated that what =
I know about barebox.

Kind regards
Fabian

>=20
> Cheers,
> Ahmad
>=20
> > +		rmdir("/pstore");
> > +	}
> > +}
> > +
> > =C2=A0static int mount_root(void)
> > =C2=A0{
> > =C2=A0	mount("none", "ramfs", "/", NULL);
> > @@ -69,8 +82,13 @@ static int mount_root(void)
> > =C2=A0	}
> > =C2=A0
> > =C2=A0	if (IS_ENABLED(CONFIG_FS_PSTORE)) {
> > -		mkdir("/pstore", 0);
> > -		mount("none", "pstore", "/pstore", NULL);
> > +		if (IS_ALLOWED(SCONFIG_FS_EXTERNAL)) {
> > +			mkdir("/pstore", 0);
> > +			mount("none", "pstore", "/pstore", NULL);
> > +		}
> > +		sconfig_register_handler_filtered(&sconfig_notifier,
> > +						=C2=A0 u_mount_pstore,
> > +						=C2=A0 SCONFIG_FS_EXTERNAL);
> > =C2=A0	}
> > =C2=A0
> > =C2=A0	if (IS_ENABLED(CONFIG_9P_FS))


