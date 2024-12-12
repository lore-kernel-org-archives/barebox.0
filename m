Delivery-date: Thu, 12 Dec 2024 12:33:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLhRs-007AQL-0U
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 12:33:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLhRs-0005ow-4y
	for lore@pengutronix.de; Thu, 12 Dec 2024 12:33:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j2DdG9LRAyyvPwiIvqssLOzf46SuO56xLd31o+M7vbk=; b=aKwgo2fJI0Sakd8UDmSKqVSg2q
	7CR92llMevYPK1wayu7Z41TV2rkcMW3udPP4AC+w8NQ4I3roMznvwE6gPPYbDJh/qtEiVRiBqUEuR
	3wQtsh7tdHOOYuVncHqS1laDB2kqnmOZUKBaOFXYaeTy+qaQTfFTXvVRGM3tMjq4vCdhc+SPEwNq7
	JazX7127K88Tt47u3NWGlh09h5/tr0d84o18K8bN1lRPFB0CoVAHs1JFhOH4IJZicPCuJVvWRxQ7k
	Ez4BG8w5P0BeQfN0bL7CeKMVJ1J0eVEa0UcD/873YBQiq3G54b1Cw1JD/0ibZTh4IB9y5wnuQ2u37
	Lbq3lOEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLhRD-00000000CCq-1yqJ;
	Thu, 12 Dec 2024 11:32:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLhQ0-00000000BqO-2OWI
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 11:31:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tLhPy-0005Nj-JF; Thu, 12 Dec 2024 12:31:42 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tLhPx-0031XI-1v;
	Thu, 12 Dec 2024 12:31:42 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tLhPy-00COy7-0t;
	Thu, 12 Dec 2024 12:31:42 +0100
Date: Thu, 12 Dec 2024 12:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z1rJniSaV7iWgr6F@pengutronix.de>
References: <CAP1tNvQoUsjRNKMr-CZ_Q67-PKGfj_ZsoePeT3pgOe_DefriMg@mail.gmail.com>
 <Z1qm8cXe6SmEGxvM@pengutronix.de>
 <CAP1tNvRmBaoHOgvti4_cPexSir7isbuDuo+RMCoT35Avm+d21Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRmBaoHOgvti4_cPexSir7isbuDuo+RMCoT35Avm+d21Q@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_033144_605919_36E6EE73 
X-CRM114-Status: GOOD (  14.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Possible regression 2024.12.0 in parsing "aliases"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 12, 2024 at 12:30:18PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> There seems to be a bug in getting the ID in i2c_add_numbered_adapter()
> It uses dev.parent instead of dev, for example:
> of_alias_get_id(adapter->dev.of_node, "i2c");
> 
> And with this everything works as expected.

I don't understand this. In i2c-rockchip.c we have:

        i2c->adapter.dev.parent = dev;
        i2c->adapter.dev.of_node = dev->of_node;
	i2c_add_numbered_adapter(&i2c->adapter);

With that it shouldn't make a difference whether we do this:

adapter->nr = of_alias_get_id(adapter->dev.parent->of_node, "i2c");

or that:

adapter->nr = of_alias_get_id(adapter->dev->of_node, "i2c");

Should be the same device node both times.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


