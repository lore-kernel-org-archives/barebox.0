Delivery-date: Tue, 11 May 2021 14:24:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRRV-0004yi-15
	for lore@lore.pengutronix.de; Tue, 11 May 2021 14:24:53 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRRT-00038R-Rg
	for lore@pengutronix.de; Tue, 11 May 2021 14:24:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9QX40dryqfcLDCmmyX+l33DEzsDTvQ4oCwM7RtiLisA=; b=CkE3wJ4lX/JekFUPnzVW7wKiu
	fxvP1wxXywcJ1uWHoLktbMg/E8qMKBk/1M3TzETdO/oTM4gn7nCA5R4/K+pu+iuyl/6X9mHhAetBG
	InyB9u64bDo3fd2OLbCsgYmjAUryKBr5qj5OEEk4o+oi8jE3si81pePGL75LChFi0oG318lUsBxwm
	udbBkktGupMu+Ym5LfaWzZIaj8CUXr4pHtut4zKAseE6tcqriiFVNWmGvTxGMZy7MGp8Cz02G41nb
	ZAZCXdNxeXXSh4v0RSGa/wB97XUUULvS3sAAzPQuV9X9hJhI+i3mYZ9jpsI8aNuid/io7paO/hC/X
	BRN+Q8udA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgRQa-00HMfo-RM; Tue, 11 May 2021 12:23:57 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgO86-00GdWq-MO
 for barebox@desiato.infradead.org; Tue, 11 May 2021 08:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EnSV9Q58L8noeqicUDL6qZUc6h3OrZbsn6PwJXFcfjc=; b=3M+dNRUBm/zxZ8UdGR0B5VwuKV
 wKeY5vw9VHrL9l3VwVHwhs6r4ZvpzfPz/oYn5paAXKdQUVFOU9SOkLURnQd4u8h0sySBAyEGDwSy7
 hKMYSf7GeB/m8+Fe2/iX4X//pKyHvwZsCXqvAGUljwtLEId/IETxG6Fppk2E+l8DXA2uik70SvGZw
 UHH3Ig9m/NtXhlqGEpPRRibRU4QO+UDTrQaRT2s+m3N1NeX7r4B0Pp7Pdvi6/4AXIhRIja7Rm5Y4t
 OrYMP71YST/qrXLAnPacz1FOYXPYyoZvpQKpkBvuAlIZPD0A0+xCHmYvInIQMjr4lhVP7ASiTbMPv
 MiV9DEQg==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgO83-009PYU-42
 for barebox@lists.infradead.org; Tue, 11 May 2021 08:52:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id D35A71A0D31
 for <barebox@lists.infradead.org>; Tue, 11 May 2021 08:52:29 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KOJSPTW9;
 Tue, 11 May 2021 08:52:29 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id A77841A0D2E;
 Tue, 11 May 2021 08:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 6E9D827E0896;
 Tue, 11 May 2021 10:52:29 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id r6L8ms5IB1Aa; Tue, 11 May 2021 10:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1DAFC27E089C;
 Tue, 11 May 2021 10:52:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1DAFC27E089C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1620723149;
 bh=EnSV9Q58L8noeqicUDL6qZUc6h3OrZbsn6PwJXFcfjc=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=PRwzpY2GnALLNibzosIx5vt3an2LPWFpFGa4axQgjo+EcKWdNKVk1KaSxxkgd5OIw
 5N/uhVrRkIJ9Im2RooURxIHYO38uu1DRjqWk/eg7nr5XIKEr/gT2zvstzr7rAflDEa
 o40RkHlR5Peq4qXmndA5f68TJmIT2Pu2qJ0RzG5g=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gvaGu_Cg1vzk; Tue, 11 May 2021 10:52:29 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0504B27E0896;
 Tue, 11 May 2021 10:52:29 +0200 (CEST)
Date: Tue, 11 May 2021 10:52:27 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Neeraj Pal <neerajpal09@gmail.com>, barebox@lists.infradead.org
Message-ID: <20210511085227.GB20010@tellis.lin.mbt.kalray.eu>
References: <CANi4_RU6QrU-ciUTpkLzGxp4fbibn0Dhyo4xP1m0=Mxm5LA74g@mail.gmail.com>
 <20210507105830.GW19819@pengutronix.de>
 <20210510101742.GA20010@tellis.lin.mbt.kalray.eu>
 <20210511080003.GF19819@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511080003.GF19819@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_015235_484837_B8F5963D 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_015235_484837_B8F5963D 
X-CRM114-Status: UNSURE (   5.88  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [BUG] Out of bound read of size 1 in __d_alloc function which
 further leads to __default_memcpy function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 11, 2021 at 10:00:03AM +0200, Sascha Hauer wrote:
> On Mon, May 10, 2021 at 12:18:08PM +0200, Jules Maselbas wrote:
> 
> Indeed I can confirm that 74946415a already fixes the issue, also with a
> 'nfs foo ""' command. This renders my patches unnecessary for this
> issue, but still I think they do the right thing, so I tend to keep
> them.
Agreed



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

