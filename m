Delivery-date: Thu, 16 Sep 2021 11:48:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQo0G-000710-JP
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:48:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQo0F-0000P4-O4
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:48:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPLwkt9S6g48u5nOJoPGs/sJP6Q6friAzymO54eMX1Y=; b=WC5xeCQu6kUVtk
	fGOLvAJwM4LWBivKUoKZn235MzbIiQuU/NHywy8U6SOtDZHj6Kij1NsYxOzl5P0P4M09YmmAdf9UA
	B/DTniQgznQ1ss3tgUbOlukC5leRwgSmxueF7Gqi8n59OvZFSnI3mp/253Cr6H/FtXbJcrOdEIRW+
	mBlHNYfDiKhxXveRE3j0Z670WCr3SplFaopdB/leRgizeLzJTACshpX7U9qZ4SLLLgGlpjDeraiiW
	t/k2vV5+rm5nICUP9JeA5r2Rj1CTVfNVCbC9BTxefhGmXAlq9gpz+IvmEwQ9qlIjFRZmVveRDrGut
	6WhCD0cvRnp88EB1HstA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnyn-00AlyB-Pn; Thu, 16 Sep 2021 09:46:53 +0000
Received: from mxout.security-mail.net ([85.31.212.46]
 helo=fx303.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnyi-00AlxZ-On
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:46:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx303.security-mail.net (Postfix) with ESMTP id A11D51C34C0
 for <barebox@lists.infradead.org>; Thu, 16 Sep 2021 11:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1631785595;
 bh=yxGPf9eez/9RO/ASmqe96LS+aPRD9FMsHHwDtOSSVKg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=eSatoBuqNwU7dJl4k1p2cYsoQJKWyMSXL2U2smtsNwEkgCQrMRn6e64z6cm9B+dQZ
 loVFLWpNZ00//w0Zhgn43uVYHJwvIcJ97Ml7bw/76kFhaOLBLNlSXYWGCJ3766op6E
 FPEHYTgn1RKjlLmYwvVVMMZL9MJWyCOsIaQcuSY4=
Received: from fx303 (localhost [127.0.0.1]) by fx303.security-mail.net
 (Postfix) with ESMTP id 57DFC1C3523; Thu, 16 Sep 2021 11:46:35 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx303.security-mail.net (Postfix) with ESMTPS id D314D1C34D0; Thu, 16 Sep
 2021 11:46:34 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id BDAF127E02DB; Thu, 16 Sep 2021
 11:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id A7CF727E02DE; Thu, 16 Sep 2021 11:46:34 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 KZiUCqdIlzMs; Thu, 16 Sep 2021 11:46:34 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 8AFD727E02DB; Thu, 16 Sep 2021
 11:46:34 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <71f0.6143127a.d1f55.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu A7CF727E02DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1631785594;
 bh=yxGPf9eez/9RO/ASmqe96LS+aPRD9FMsHHwDtOSSVKg=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=JtSMPH6BH+/xArE9OIOmzCzpF79W/kg2ZfzYKVARk1IqilPh3tO078MC981/ZT50R
 1qEDhxcODA02VfxNKN6xPWdgKZLX6SJnQ5tdiLHyJbFijDVRUpVHsOtIzakFczIdwM
 duJMVwa7nj2snlN8YQyiMUJJZ3HAdFSDI1yBbH/0=
Date: Thu, 16 Sep 2021 11:46:33 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210916094633.GB23817@tellis.lin.mbt.kalray.eu>
References: <20210916093753.23433-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916093753.23433-1-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_024649_126620_0ABE9239 
X-CRM114-Status: UNSURE (   2.70  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: document arm_setup_stack() pitfalls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Thanks Ahmad !





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

