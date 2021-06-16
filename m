Delivery-date: Wed, 16 Jun 2021 09:50:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQJN-0001AV-T7
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:50:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQJN-00018h-0k
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:50:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=72iSjhENnqO+pWr9YFgXxAh24/+fJiQuPmdGovKNXqY=; b=mDAVLvAybukKmzz+MgZGVAo9ig
	zyxNs4WEQmznYyJN0/Fnb1PJ+P0UwqVtFv5siwMSgGT0Mx1g0jvYpLhH0hIPvAPfb6jQu5GQz7YaZ
	R7fCmqfMVafcuipYDlhp2Mim0d9/VbeTO/hj6E5UdmdSK42xjOYth+tdSKFpA/7xF1QqwNVuHwEzu
	LNdCe7Q8AKfsJiWbNfwyTg64pXCVcacPKmgvKwFuHIPaqUXqtJuz5PfhwygvDtWtFI2Sb09pNI1OW
	PiofnivDJxtwidzyGDK0pYewyFhwH1wkZ5KoBNVbdp2/w/i/+9LuSN3ReTayGepOzr+xi8CF8AomQ
	DOplSCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQHx-005GP0-DI; Wed, 16 Jun 2021 07:48:41 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQHr-005GNs-LP
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fQazmQ2u1wpQ/WadNj3Qed1kxmYgYG3SKFdGygBfqek=; b=LA1bh6nyRKT9QRob2Ldd3ottLn
 r+CwcUgwOHYon7Gbi+XYFAMVgPr53Wr1gGlYjinojPz4w0JPEfNMdcXfuO+4eiaMgqhcjE5Us8fKO
 hkkyvitNM+UxB25p4/T4OcWKFMP5Yv1jJsCInljZozcERQZQ62ujY3z8ZuHtC/yBPx4MH1UnM+jW5
 YbZKaThsa0IowP8Z0kIzjJ4hDJVRKVkyUU0WVWaG5vbi1Dp/buX2/29gK8ilM2dEtplNucieFK8oN
 qV6K+CLUQu9DEpsNDAixObYE8uzXMINi02rxQfX6FpwCmKDxtQ/NPiC8Td62FcPOvHDmY6hU47Zt5
 xhMDF6qA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:42916
 helo=[192.168.69.215]) by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1ltQHb-00B5Q4-78; Wed, 16 Jun 2021 09:48:27 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>,
 Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
 <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
 <CAMHeXxPNjNYmBdvob3LnAN36ccq8nT0UOjPtV0PGUeFO-PwDxw@mail.gmail.com>
 <79d8549e-fa99-6412-cbb0-dfce46083060@norik.com>
 <CAMHeXxNttLL84+xoJXALcK7dnBSUVJUDj9fR=wUBEfSg8eG7=A@mail.gmail.com>
 <20210615143535.GJ9782@pengutronix.de>
 <CAMHeXxN60A5SEC=wHdB+4AMsTh56CDstn2KAj2ZYHLcBK8T3Eg@mail.gmail.com>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <ca1898e0-6f37-0d1f-7b10-445665183d29@norik.com>
Date: Wed, 16 Jun 2021 09:48:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAMHeXxN60A5SEC=wHdB+4AMsTh56CDstn2KAj2ZYHLcBK8T3Eg@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_004836_075970_D156FCF4 
X-CRM114-Status: UNSURE (   6.92  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ok, I understand that second patch fixes really specific problem, which 
is not likely to happen. And if this patch would be applied it would 
break other specific problem that Trent pointed out.

Nevertheless, I think first patch doesn't break anything and only fixes 
bad block marker swapping. Sascha, if you think only first patch can be 
applied, should I create a v2 and only send first patch or is this not 
necessary?

Thank you both.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

