Delivery-date: Sun, 04 Apr 2021 13:35:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12k-0002mu-81
	for lore@lore.pengutronix.de; Sun, 04 Apr 2021 13:35:50 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12g-0002Zh-CU
	for lore@pengutronix.de; Sun, 04 Apr 2021 13:35:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+rCI5zz9HJcG/hMjOcTxS1qJaF1TD91pk/unRmwAyWs=; b=Mjqo0hl4QIN6CiNLrQ1DVu9o9
	9zaVIj285bn9kw/koiDLlbpCGCQ5EBCWr6S3Yf8nvIndwzTI4JI+E6VGrNxjLqlrnGAZeAvnDq17J
	X8cHYTRqqaPdtKH1aFUvMWgY2DY7HiaD9ufQrVXGb/liIFkyPV9j7+LOfqf4VgOQGKs+XyTViDm5/
	j0m7TQkeOBcK7kjCUFvgLregOkzAZvDB9uIRrbdIwkOSxx4YpydqYJjqqPmBM157xlk88ujBMn5TF
	K7Gp6mCUuNCSanaI0dbo6dLW4Mk3yJniTHUe8L2WiVoYJywlNrib7NaCHH42Nxqwz9K1K11XF7cUF
	kaBNx3i3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lT0z6-00Fg6C-Px; Sun, 04 Apr 2021 11:32:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lT0tP-00FfiL-Ug
 for barebox@lists.infradead.org; Sun, 04 Apr 2021 11:26:20 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lT0tP-0001sM-Ge; Sun, 04 Apr 2021 13:26:11 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Rouven Czerwinski <rcz@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
 <20210402085613.9a8dd5ecb960a47faa3eaa90@gmail.com>
 <c2a98aea-2220-38ca-34e5-78a2a585ce82@pengutronix.de>
 <20210402111348.fcc6384084512f23588aad8f@gmail.com>
 <2cd63d9c-903d-3670-6417-65d1fa324410@pengutronix.de>
 <20210403120056.c797366f354339aca24a2b0f@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a626dae0-8780-7b1d-960f-deee0ab8773c@pengutronix.de>
Date: Sun, 4 Apr 2021 13:26:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210403120056.c797366f354339aca24a2b0f@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210404_122618_114309_330D63F0 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 03.04.21 11:00, Antony Pavlov wrote:
> To my great surprise riscv-qemu (at least v2.12) generates no "bus error"
> exception on access to unattended address.

I'd have expected a bus error as well if the memory area is unpopulated.
With MMU support, we should catch this.
@Rouven, any news on exception support? :^)

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

