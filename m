Delivery-date: Thu, 20 Oct 2022 08:38:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olPBr-001cSx-JR
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 08:38:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olPBp-0006U9-1e
	for lore@pengutronix.de; Thu, 20 Oct 2022 08:38:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rg6BSm/kfoO50bcYaQZfFWvwTk1Z9ZrRVkmbfE5N/cw=; b=n76H+oSc1+i5uiTUOMf+ykt2ld
	c9VYqoTkCQQAJiiOQELnxW0Nor3GQar6wqyBwZzMnLdJ89ctJT/M1puWtXbtvlvNxR3JH5XO0pBZp
	h/86Doy8bmgXFJhtCrAo3vfyGjsRvjZuOdWNO7o0+X7noENq7D4evmuyxlEHziJI5PXJ/nu13Ae1e
	We7ABi6nhzE+I1lPeG3C1/hxHfm58mH4VJUsRjj8Lz+1TZbmAsdfkwDiCJ76mV27/622fam8gKALa
	dsn3fBpM6NT4oZelBaSBuict5O9IkQJPklKBwkd9r1puTg28kAZJYENBVWVcmaVsy9IFYV+g8HFn9
	DuB/HF0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olPA1-00B6XD-Gz; Thu, 20 Oct 2022 06:36:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olP9u-00B5zi-K9
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 06:36:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olP9p-0006BA-EL; Thu, 20 Oct 2022 08:35:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olP9p-000454-7K; Thu, 20 Oct 2022 08:35:57 +0200
Date: Thu, 20 Oct 2022 08:35:57 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221020063557.GX6702@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
 <20221014163534.3812272-9-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221014163534.3812272-9-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_233602_677709_EC974B3D 
X-CRM114-Status: GOOD (  16.72  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 8/8] state: add support for new backend format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 14, 2022 at 06:35:34PM +0200, Marco Felsch wrote:
> The backend can now be specified by either:
> 
>   backend = <&of_partition>;
> 
> or by using the path binding:
> 
>   backend = &mmc2, "partname:2";
> 
>   backend = &of_partition;

We discussed this internally and came to the conclusion that we don't
want to spread the usage of this binding that is currently used for the
barebox environment as well.

Instead we want to go into another direction:

The MBR/GPT partitions should be described in a node under the physical
device and then the state node can continue using the phandle only, so
something like:

backend = <&state_part>;

&mmc {
	partitions {
		compatible = "gpr-partitions";

		state_part {
			partuuid = "16367da7-c518-499f-9aad-e1f366692365"
		};
	};
};

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


