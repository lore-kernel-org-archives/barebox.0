Delivery-date: Wed, 17 Nov 2021 11:01:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnHkp-0004Z8-KC
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 11:01:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnHko-0005Ev-RJ
	for lore@pengutronix.de; Wed, 17 Nov 2021 11:01:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsPRWGvBVUzOlScMwedMyDL0DihbcqlXycUC+gdcFfw=; b=HSxFSOem8TWsgY
	K064/1G1W7T7Ob9nDWqGOJnuL7ruC+K1KdYmXkNEdhRr2eFpVbTU0oRWrTO6wpktbWlarM2J/87Ng
	ppzDRPQlxmPkInhCToG+m1HS0oTffdPnEpIMub5qZnboeRFIMM5s904+C+5QOLmdVmzztiaR1Kk6V
	e9noW1ruAKdOjqVdfP3uXsBZR0yZPds43Q425XFkiZkppzNV5DmVG+OBGaeDGMp46w9r4t/9FUQi1
	PSyZ1n7lt/VivqyJAgfV6TlG7Urp6d/DAAxyia7H+TL/TuGmWK8Y1+skh2kLvfrEYmV0Jo9X47kHt
	PM9WKBBXyudNAXQh5hPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnHjO-004NiN-TD; Wed, 17 Nov 2021 09:59:55 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnHjH-004NhF-RT
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 09:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1637143181; x=1639735181;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gNz/Q779MdkLMDtBn61QyHm1Vyx5X2aep5o35nfr2gM=;
 b=Go/P41+OByoA1PPTDuLbkIWYPkKZQB71/MS3F09Pl5s8tgVqTLgPmjc5hYOxRpL7
 bxFFzTEY1IR8bWcpisRTkMAWuLl9dlNQ3MzacBODW7cBf+qw7A8zRynb7kEku2Wu
 XRlC7b9HeQHFAqhQNJB7SEvM6g6CLZalcIMzYkTXjCA=;
X-AuditID: c39127d2-4ef327000000426a-ea-6194d28d05a2
Received: from florix.phytec.de (florix.phytec.de [172.16.0.118])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 8D.AA.17002.D82D4916;
 Wed, 17 Nov 2021 10:59:41 +0100 (CET)
Received: from Berlix.phytec.de (172.16.0.117) by Florix.phytec.de
 (172.16.0.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Wed, 17 Nov
 2021 10:59:41 +0100
Received: from Berlix.phytec.de ([fe80::6db6:296b:4c6d:4408]) by
 berlix.phytec.de ([fe80::6db6:296b:4c6d:4408%3]) with mapi id 15.01.2375.017; 
 Wed, 17 Nov 2021 10:59:41 +0100
From: =?utf-8?B?U3RlZmFuIFJpZWRtw7xsbGVy?= <S.Riedmueller@phytec.de>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "andrej.picej@norik.com" <andrej.picej@norik.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Yunus Bas
 <Y.Bas@phytec.de>
Thread-Topic: [PATCH 2/5] ARM: configs: phytec-som-imx6.config
Thread-Index: AQHX2iEF8QJ6xhv6Wkex8ZZ7vpcrOKwHPVqAgAAxTAA=
Date: Wed, 17 Nov 2021 09:59:41 +0000
Message-ID: <171acb6acc23a8c07a74e2d8fdc2d6e1219d43fe.camel@phytec.de>
References: <20211115130208.619443-1-andrej.picej@norik.com>
 <20211115130208.619443-3-andrej.picej@norik.com>
 <20211117070313.GG6556@pengutronix.de>
In-Reply-To: <20211117070313.GG6556@pengutronix.de>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <3B0BBE00E368E94486E17FD710BB13B5@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsWyRoChTLf30pREg58XFS2m7mW0OLG4n9ni
 0eZZrA7MHpuX1Ht8/7qB1aP/r0EAcxSXTUpqTmZZapG+XQJXxtIfn1kLugQqmvZsZGlgvMLf
 xcjJISFgInF34Xf2LkYuDiGBZUwSt+7fZ4RwHjFKPN3+iwWkSkhgE6PE920mIDabgIvE57Zv
 bCC2iICuxI6j78EamAUmM0rMmX2GGSQhLGArMePfJFaIIjuJm4veQzVYSfx8fYARxGYRUJXo
 Wt/PBGLzCrhJHG07yAyxeRajRM/xpWCDOAWMJR5vP8wOYjMKyEp0NrwDa2AWEJfY9Ow7K8QP
 AhJL9pxnhrBFJV4+/gcVV5Bo6+kEqucAqteUWL9LH6LVQmJm3012CFtRYkr3Q3aIGwQlTs58
 wjKBUXwWkg2zELpnIemehaR7FpLuBYysqxiFcjOTs1OLMrP1CjIqS1KT9VJSNzECI+/wRPVL
 Oxj75ngcYmTiYDzEKMHBrCTCm1I1OVGINyWxsiq1KD++qDQntfgQozQHi5I47/0epkQhgfTE
 ktTs1NSC1CKYLBMHp1QDYyODtNv8Po2zJp6pT6w0zqZt2/SHUSPvogKDw3Wujw+juh/MfPLE
 yENdpEQo6GdrrmuTPe9Z9nfrg74lTQwX5W8VOehcfUGFafehyR/5Zs1n/XZkvlavcrtuy81z
 3tPEJGY7v3O9oR0l/XzN06c5H5++f/Ly8NOqkozIf523BP+d9Khtby/eqcRSnJFoqMVcVJwI
 AFlSu5OqAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_015948_238777_7F514B8C 
X-CRM114-Status: GOOD (  17.36  )
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
X-Spam-Status: No, score=-104.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] ARM: configs: phytec-som-imx6.config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Wed, 2021-11-17 at 08:03 +0100, Sascha Hauer wrote:
> On Mon, Nov 15, 2021 at 02:02:05PM +0100, Andrej Picej wrote:
> > Create PHYTEC specific i.MX6 SoM config fragment, which is intended to
> > be merged with the default imx_v7_defconfig. This way, one can clearly
> > outline the differences between standard defconfig and changes PHYTEC
> > makes for i.MX6 SoMs in their BSP. Nonetheless, at the same time, this
> > minimizes efforts required to port patches to defconfig with each new
> > PHYTEC BSP release.
> > 
> > For now:
> >      - disable BLSPEC,
> >      - disable IPU driver,
> 
> Why are these disabled? These options shouldn't hurt anyone.

You're right, there should be no issue with the BLSPEC config. 

Regarding the IPU driver, I only remember that we had an issue some time ago
with the IPU driver and since then disable it because we don't make use of it
in our BSP. But I can't remember what the actual issue was.

@Andrej, maybe you can take another look at it and see if it can be enabled
without issues on our boards nowadays. In that case we could drop disabling
the IPU driver as well.

> 
> >      - enable of_fixup_status command,
> >      - enable of_overlay command,
> >      - enable of_display_timings command and
> >      - enable OCOTP fuse writing ability.
> 
> We can enable these in imx_v7_defconfig, no need to overwrite them.

Sure let's move them to the defconfig then.

Regards,
Stefan

> 
> Sascha
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

