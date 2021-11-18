Delivery-date: Thu, 18 Nov 2021 13:35:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mngda-0003Rr-RZ
	for lore@lore.pengutronix.de; Thu, 18 Nov 2021 13:35:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mngdZ-0007Cv-E2
	for lore@pengutronix.de; Thu, 18 Nov 2021 13:35:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJiGOwUKgqq6R8zPDHvkzPFIWRne7iiWbo2LiacK12c=; b=J7EVMdOz2SVtRh
	oyK/FOZ4t0pBWq+jT1xSM63QgZ6Y456WAYFm8uzTFmTC5CaJ4QuSECYjSBkafUZon+Tk6Yo6CxH4q
	kncAAAJpf9WlI/kXA4Kvg/vx0OO9jbydkLPpGKyDkJnW9/EJNmpRuQpR8SHnhGjlZ/xNG1SGDYpPc
	zg0o915cMnY5B3lR0TaaB2QUY9xS7zjLdQBvUn/3QEHhF3SaU+jy4aB4YdFPvNN6i6FmxIUU7FrYk
	j1MEDqfIo2qoqh8Aybqp38pPEbU6B8YkGveTVqHEkDNEqAM4CrnyzMPVcCKVUnD5yo3uAKU9QBkOD
	d3y1FCYMP+o3CPVCCqdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mngcD-007lFy-S8; Thu, 18 Nov 2021 12:34:09 +0000
Received: from smtpout30.security-mail.net ([85.31.212.39]
 helo=fx308.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mngc8-007lER-M3
 for barebox@lists.infradead.org; Thu, 18 Nov 2021 12:34:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx308.security-mail.net (Postfix) with ESMTP id A395455077B
 for <barebox@lists.infradead.org>; Thu, 18 Nov 2021 13:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1637238839;
 bh=ZJsyZN27sxbtDu9GhLeQqXkDgTa8oFriCQ/QZq22LHQ=;
 h=Date:From:To:Subject:References:In-Reply-To;
 b=duXWWrQpV+iQJ1++myxh8G7LJ9pA0A0QPFEiIrQDZmAxZuAndjqS6yCrKQfNDOMeu
 m9UFt1TCBg2zJcHrQa+1JKb8TUd+1mtvNt3LRYi13Yd/E+f6KkkviT81edX/QamckL
 9zOJcqtqXbn8RaA34J2iQAUZsG8lI3t78v3pQqAU=
Received: from fx308 (localhost [127.0.0.1]) by fx308.security-mail.net
 (Postfix) with ESMTP id 717BA550772 for <barebox@lists.infradead.org>; Thu,
 18 Nov 2021 13:33:59 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx308.security-mail.net (Postfix) with ESMTPS id 2945B550769 for
 <barebox@lists.infradead.org>; Thu, 18 Nov 2021 13:33:59 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id DE10627E039A for
 <barebox@lists.infradead.org>; Thu, 18 Nov 2021 13:33:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id C831827E039F for <barebox@lists.infradead.org>; Thu,
 18 Nov 2021 13:33:58 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 Oz0WbLIxmCWN for <barebox@lists.infradead.org>; Thu, 18 Nov 2021 13:33:58
 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id B98AD27E039A for
 <barebox@lists.infradead.org>; Thu, 18 Nov 2021 13:33:58 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <fe01.61964837.2f4c.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C831827E039F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1637238838;
 bh=XPgegpeWEuVhgKroZWYXd8ytjCp7XiQn1+LsV9VJp9s=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=pDrJG8AFhQcge9Pp8/PZoQ+rnWyMAjNT8M4/gqPXvHLSj+es1RoeXHtOL2FAZo3ka
 HCCfdxAADexejV0VDKwNP93SCwGlUfoL3nHsbsPheU9tOv0Yvqiw+9v7VrM1GVHvJu
 0TsVTMIzzxnLJ2Vqw/ujTbOB6DIktmHNrBSb6Nmg=
Date: Thu, 18 Nov 2021 13:33:57 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <20211118123357.GF1022@tellis.lin.mbt.kalray.eu>
References: <20211004073842.14809-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211004073842.14809-1-jmaselbas@kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_043404_962771_A88D8A88 
X-CRM114-Status: GOOD (  13.74  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] debug_ll: ns16550: Fix interrupt disable on init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ping

On Mon, Oct 04, 2021 at 09:38:42AM +0200, Jules Maselbas wrote:
> The debug_ll_write_reg function takes first the register
> and secondly the value to write, which in this call were
> inverted. Fix the argument order.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  include/debug_ll/ns16550.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
> index 7e4dbeb453..373c917d86 100644
> --- a/include/debug_ll/ns16550.h
> +++ b/include/debug_ll/ns16550.h
> @@ -43,7 +43,7 @@ static inline uint16_t debug_ll_ns16550_calc_divisor(unsigned long clk)
>  static inline void debug_ll_ns16550_init(uint16_t divisor)
>  {
>  	debug_ll_write_reg(NS16550_LCR, 0x0); /* select ier reg */
> -        debug_ll_write_reg(0x00, NS16550_IER);
> +	debug_ll_write_reg(NS16550_IER, 0x0); /* disable interrupts */
>  
>  	debug_ll_write_reg(NS16550_LCR, NS16550_LCR_BKSE);
>  	debug_ll_write_reg(NS16550_DLL, divisor & 0xff);
> -- 
> 2.17.1
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

