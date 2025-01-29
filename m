Delivery-date: Wed, 29 Jan 2025 09:51:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td3n9-005rdg-1H
	for lore@lore.pengutronix.de;
	Wed, 29 Jan 2025 09:51:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td3n9-0002j8-G0
	for lore@pengutronix.de; Wed, 29 Jan 2025 09:51:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+KF9iLFFG51HFovKp2lncy7KighZmQ/2M5y6fa+0pn4=; b=YVxOWXAJr57uju0HLV2Y+VsLSC
	w4gGRAuZgUmyTKKx2a/H47iTDvuc3vk0sQ7n+dmouD/S/vPT0H26EFvUlK95obcUQKSgE8zxcYpXM
	1WQ+pJmA/1cCeBxvDK2h6zOv2j1+evnkc10ufF4ofNBfPdOyBtvF30McAmwZwEY9v/FFo/F6XHx6/
	G/f3fx7CxHNbeDXE5xPsEwYiRMbNPm18b5LXGmN28qHQ36q2ZowlV1ZUSosLDmrxlZANyyuRtotGH
	mm6Zb23ZxeyLhdUZ3VC5iSTq/PeV6AHFSU7asqZs0PcR9bzvOvjEMOiAGsXyvFZ4JTg3a0MHzpYMw
	+gtMbFTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td3mW-00000006aTu-2GyP;
	Wed, 29 Jan 2025 08:50:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td3mJ-00000006aRz-3nIE
	for barebox@lists.infradead.org;
	Wed, 29 Jan 2025 08:50:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1td3mG-0002a3-JO; Wed, 29 Jan 2025 09:50:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1td3mG-002Qxs-0q;
	Wed, 29 Jan 2025 09:50:28 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1td3mG-002jJS-0W;
	Wed, 29 Jan 2025 09:50:28 +0100
Date: Wed, 29 Jan 2025 09:50:28 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20250129085028.rd6xep2tjdffynna@pengutronix.de>
References: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_005031_942094_721FD303 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Devicetree add-on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

thanks for reaching out to the ML.

On 25-01-29, Alexander Shiyan wrote:
> Hello All.
> 
> The question arose whether it is possible to load an add-on into
> devicetree, but NOT through an overlay,

Why not dt-overlays?

> i.e. as a full-fledged dtb?
> Ideally, it should look like this: the main ENTRY_FUNCTION() loads the
> base tree, then,
> after initialization in device_initcall(), the board modification is
> determined and the full devicetree
> written for this variant is loaded.

Sounds exactly like a dt-overlay use-case. As it sounds to me you do
have common base for your platform/product family. This would be your
base-dtb loaded for every product. Later on you need to apply the
overlays accordingly.

E.g. for the platform family I'm currently working with we do the
following:

base-dt:
--------
/ {
	feat_a: feature-device-a {
		compatible = "xyz,feature-device-a";
		...
		...
		status = "disabled";
	};

	feat_b: feature-device-b {
		compatible = "foo,feature-device-b";
		...
		...
		status = "disabled";
	};
};

feat-a-dto:
-----------
&feat_a {
	status = "okay";
};

feat-b-dto:
-----------
&feat_b {
	status = "okay";
};

This way we define the whole node within the base-dt and the overlays
only enable it. This makes the overlays very straightforwward and you
still have the opportunity to reconfigure the device-node if you really
have to.

Regards,
  Marco


