Delivery-date: Wed, 16 Oct 2024 12:27:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t11Fv-0051j2-2n
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 12:27:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t11Fv-0003vh-AW
	for lore@pengutronix.de; Wed, 16 Oct 2024 12:27:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SWHZn7jTYcByDFYnjIah9LKON9ERWo3Ht4eL9p64OZ8=; b=CdtfmPkCK2EwTVUsREd7/W7buL
	UVGUtWrheCS3Ro8ELz/Wyzl35EeolsVZl8/7HEAH0Mg3Y0+RNLUNa6AfYeCdwLIGeT1BQseaklU/k
	Zyt+TgIHGctkKCHvzpHkCmyQTM7mjcDm4kgYwNVpkmN8HTbyFeIzaTH0AwmQ1Mde75e49R6vrUGu9
	OQOQRYNtFThvm5ljjXehUWgvtD0PkN/P+rPklQ447bQy+FUvepOQLjHzDWNiEXF03zsdWTWy2ZW9V
	2AHjNmj6RtG8L6cFm8aRtO6Uco3bt1hInna+HqbaQIZlYEFH89pqX8XwGArDqU2jLLP2cJiWCfBYc
	7qsLV8kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t11FO-0000000BRMS-3Qjs;
	Wed, 16 Oct 2024 10:27:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t11DR-0000000BQgG-2dwC
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 10:25:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t11DP-0003Uh-Sn; Wed, 16 Oct 2024 12:25:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t11DP-002FLu-ES; Wed, 16 Oct 2024 12:25:15 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t11DP-00EPjc-1A;
	Wed, 16 Oct 2024 12:25:15 +0200
Date: Wed, 16 Oct 2024 12:25:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Zw-Ui9tXqfrsIm4C@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
 <172897622912.1432196.9754934695481714584.b4-ty@pengutronix.de>
 <Zw4Wwc6OfcLs3Qt4@pengutronix.de>
 <20241015-honest-nocturnal-hare-e1ca2a@lemur>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015-honest-nocturnal-hare-e1ca2a@lemur>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_032517_694729_6D7E26A2 
X-CRM114-Status: GOOD (  19.17  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/12] include: common.h: make it include only headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Konstantin,

On Tue, Oct 15, 2024 at 09:35:01AM -0400, Konstantin Ryabitsev wrote:
> On Tue, Oct 15, 2024 at 09:16:17AM +0200, Sascha Hauer wrote:
> > Hm, I assumed b4 ty would automatically send a "partly applied" message.
> > I've seen this with others using b4 ty apparently. I don't know what
> > went wrong here.
> 
> For b4 to know that it's what you intended, you have to apply the series with
> a --cherry-pick command, e.g.:
> 
> b4 am -P 1-7 [msgid]
> 
> Since you retrieved the entire series, b4 assumes
> that we just can't find the commits associated with the patches you retrieved.

Thanks for clarifying. Indeed I applied the whole series and just
dropped the patches I didn't want to have afterwards. I should have
applied only the desired patches in the first place.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


