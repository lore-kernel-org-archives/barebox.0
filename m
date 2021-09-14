Delivery-date: Tue, 14 Sep 2021 12:13:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ5RK-00059N-BU
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 12:13:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ5RJ-0000wU-E4
	for lore@pengutronix.de; Tue, 14 Sep 2021 12:13:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTqomHoF44V+P1sADete88YRD5u25XqT1torLbee6UQ=; b=CZGw1mfTbodtHP
	fUkyUqKNB1iHbxlNTzjG3wUrnuK2x0P5cskmbVkMLo9kOgmeVp6EyyuA4wxCrzMg0hflVrM6ULae0
	WOBsTPjRsCx7Hbvk8evWKWphGhzii77xlRJaYV1qrbBko4YC3Wbmw8X5IjmEy1drNONYvR7OqnAwe
	xK05Omsxwr0xLVYlluOt/u7/6pOUi4k9Vi0j4N3iUuxSrYJTG07p9crgakCcpiBY2yp7XUaATNyrR
	EhxAWsL3MHvCOW0M2sWNUWNuePBeuTNnC/POtHJ9N4Ecrz9gRFY7kqcRZLv5qOdhn5ww7+pEV4LxX
	EMxJvpZRtSBOatInJsow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ5PD-005ATP-W8; Tue, 14 Sep 2021 10:11:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ5P4-005AQj-28
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 10:11:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mQ5P1-0000X1-LV; Tue, 14 Sep 2021 12:10:59 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mQ5P1-0000Pm-5C; Tue, 14 Sep 2021 12:10:59 +0200
Date: Tue, 14 Sep 2021 12:10:59 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Message-ID: <20210914101059.wejero3stqkvqy6m@pengutronix.de>
References: <20210913083019.364599-1-ahmad@a3f.at>
 <20210914085553.ggnadiwz3ldjvr2o@pengutronix.de>
 <201c33e8-a3ff-406d-7647-28bf4cf6d6a4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201c33e8-a3ff-406d-7647-28bf4cf6d6a4@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_031102_169199_CCCA46BB 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: remove unused struct fs_device_d::parent_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 14, 2021 at 11:02:23AM +0200, Ahmad Fatoum wrote:
> On 14.09.21 10:55, Roland Hieber wrote:
> > On Mon, Sep 13, 2021 at 10:30:19AM +0200, Ahmad Fatoum wrote:
> >> The parent_device member is unused anywhere, so drop it.
> > 
> > s/is/isn't/?
> 
> is unused == isn't used..?

Yes. Sorry. Not enough coffee.

 - Roland

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

