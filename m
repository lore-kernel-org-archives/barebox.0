Delivery-date: Wed, 12 May 2021 09:19:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgj9G-0005zo-G1
	for lore@lore.pengutronix.de; Wed, 12 May 2021 09:19:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgj9F-00070C-QK
	for lore@pengutronix.de; Wed, 12 May 2021 09:19:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MtumOjnwm/WG5tyQz+EcM5u+YDbODpZvJNKH/I1HRp4=; b=EYu7BWP4GaOdY1iQuii+ZZuoL
	FSNTfppm6cup2hnfExgf2X2XjXVgWMJcsT1Df3PQhRN1pyFC4mzl5wHifwLNsbmxL91o2OQoi/MXJ
	bvBga+yqfw+vXWqSLuZQ8i1VByjB+lXqlMgQnMcVErBV18np3tIB/mos7G03XkXTYT56qS82P28xN
	xKyazDf/RIWpduuK72LqgkSHmvZk5HZUb+/BIwFqIOVVQh1KEm3wNWcRwFND7VchGFStvQy4o+cvA
	yRd/jLK6SI9kYFBeptMkN8ANib9kuNAQX4mz7PuN4M+3JJkwg7vtuJYSt0yaiT3M8mxrYnDpBMTq8
	RE45qFASw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgj8D-002E9C-Lz; Wed, 12 May 2021 07:18:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgj89-002E8y-MJ
 for barebox@desiato.infradead.org; Wed, 12 May 2021 07:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=S5+lWC45dCsrgyDpSufurnwD9yo1bP+Vk6rcb5VZ2nQ=; b=YGx58TnGbTrExXRcqG2Amo+yxr
 PzyTfMNLEzgBWcQaKgzTIWuHaphd3PTmUtKdVaJHPwHAtMcZJTz+Gzh+n4PRVDmq46tF+YMEXmwtK
 Xhyv1gDXLTMiwtBxs28wvpUztRTzLbQppKGNWGyLKB1txTWad7LOoCMDBEVsKd3VQK2UkYgFVj9E0
 ivqxPjBgUfSeP3DEe94Jg6oOfKf1UiOQO7FA5nsZlNoUWAUVFlRXDP9BT46sWhd1RUvlHJKq6rV9C
 w6GIwB/ioZZbkag1M5Hd86vm5CzUBG913zcocWskCvT0du1MjsL/NWEEHwm2L0eJIJoY2XYr8Kpcf
 JHiTuZoA==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgj86-00AAng-PM
 for barebox@lists.infradead.org; Wed, 12 May 2021 07:18:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id CC74B1A1116
 for <barebox@lists.infradead.org>; Wed, 12 May 2021 07:17:56 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KOL4S37N;
 Wed, 12 May 2021 07:17:56 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id 9C1E41A1115;
 Wed, 12 May 2021 07:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 6FBE427E042E;
 Wed, 12 May 2021 09:17:56 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ljuWhsTKc_ml; Wed, 12 May 2021 09:17:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2B19727E0A1E;
 Wed, 12 May 2021 09:17:56 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 2B19727E0A1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1620803876;
 bh=S5+lWC45dCsrgyDpSufurnwD9yo1bP+Vk6rcb5VZ2nQ=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=TQpB+U8nFylDCO8bHmTFf0B1aCAav0/+fe2k0FZ1Q7SF0SsxxD/nn3dGCAeAOxxqT
 kh4d+cOvmLsUNqsXDhGxEPII67gCfGEHwpuCudSuKJ6UfMgiAfGjmUo9RUvT7ssEtK
 4z1iVKTGGqX4lWQtEJ36J5HbEc7ea1oT+7qph9Uw=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id k-L7emAh5LBz; Wed, 12 May 2021 09:17:56 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 184D527E042E;
 Wed, 12 May 2021 09:17:56 +0200 (CEST)
Date: Wed, 12 May 2021 09:17:43 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Neeraj Pal <neerajpal09@gmail.com>
Message-ID: <20210512071743.GA7003@tellis.lin.mbt.kalray.eu>
References: <20210417211144.26466-1-jmaselbas@kalray.eu>
 <20210512053515.GK19819@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210512053515.GK19819@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_001803_067606_BAC992CD 
X-CRM114-Status: UNSURE (   7.65  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: console_common: Replace vsprintf with vsnprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Wed, May 12, 2021 at 07:35:15AM +0200, Sascha Hauer wrote:
> Hi Jules,
> 
> I didn't realize you also created this patch. I like your version better
> because of the sizeof() you used. Replaced my version with yours, but I
> added the pbl/console.c changes from my patch to yours.
Ok cool



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

