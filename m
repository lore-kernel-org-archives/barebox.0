Delivery-date: Fri, 14 Jan 2022 11:56:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8KG0-001y9i-6F
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:56:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8KFy-0002ih-O7
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:56:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gj7JBwHP0+Ad+8BXCopcUuSYC1c6S30z9BHfHhWpkUc=; b=e8uBgmcRY3356c
	Sxa452Bib9yyIBhnCVFLw3i+uk41sD3piQ0h3l/45ElpGK6srUkZMYmp2Nk2+nkskSPMldTD19hzh
	eTAA/Y9hReFTIOwRfbx1RV1hE7O11hQA1HqBFxEAy3kqT0+FJqUCFQ4M53OL6z2+bCY6N3S1SDS8F
	bzbsXXlaotDThperKkELX0QDKnidRIOrs3pMtM9sTL6+aozs5WCMwr/MHBqHwZjTEBPppmrBvyyZS
	VmJdzMOkaeAplixmIbJgJDuD68B0HlEg0XaNOYfIiqBA9X3X7nT6sT3wNGOWcVT7oATNhfNkA9Naj
	x7wqrsUmJXfdLuLRZjvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8KEj-008nb9-BP; Fri, 14 Jan 2022 10:55:13 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8KEd-008nZ7-GJ
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:55:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id D90521B7B235
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 11:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642157695;
 bh=Du+m63XvZocPDYB7pJBvuiMGd+6wgEGTrN/vSRpVzGM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=IijYQKBRriU9F8CWrrQzgYMXwPg06mN0cNiJFNYTF//w3h3G/Z57pCnzmaMC3W5eh
 AL7Avhqg5JyC9F48/bBGz88/jZ0R3vwq+30WgG2OYKR8dos8Snc+nl3dVi3XWF+0Hm
 VSxfr1K2tEEYWaZLNZeRgPsQn/X1LumuPI38hT00=
Received: from fx408 (localhost [127.0.0.1]) by fx408.security-mail.net
 (Postfix) with ESMTP id 13BE81B7B27C; Fri, 14 Jan 2022 11:54:54 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 993DD1B7B29C; Fri, 14 Jan
 2022 11:54:53 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 26AE727E03CB; Fri, 14 Jan 2022
 11:54:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 0DB3327E03F5; Fri, 14 Jan 2022 11:54:53 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 N8YBveGhAnOC; Fri, 14 Jan 2022 11:54:52 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id EF09D27E03CB; Fri, 14 Jan 2022
 11:54:52 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <d717.61e1567d.4a3a2.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 0DB3327E03F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642157693;
 bh=dn1gfh93mD0qix+1kddpsG0dhI8nyUM2KeLx3i0C42s=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=A7khetTUNi8BCZQot9vKML7I3u2KVjCzsMSTjnhZeSdFrfP75Rq+8eM630ZoOD3jR
 R074//sle8XL2EOecZnp8r2JuvIzE5tJbaIcEYiVqFAEGGi47IswTjQ0jNEqQYeIM+
 nX43B/j0dIslDdBhK3SHbMBnvVtXUVQJhNGEVFMA=
Date: Fri, 14 Jan 2022 11:54:51 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220114105451.GA29876@tellis.lin.mbt.kalray.eu>
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
 <20220110221255.5003-3-jmaselbas@kalray.eu>
 <0ca90254-a1d1-7151-0236-4dd92ee4d620@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ca90254-a1d1-7151-0236-4dd92ee4d620@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_025507_758618_BBD46DAD 
X-CRM114-Status: GOOD (  29.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] gui: Add qoi image format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 11:05:15AM +0100, Ahmad Fatoum wrote:
> On 10.01.22 23:12, Jules Maselbas wrote:
> 
> Could you add a link there the project is from, what version
> you're importing. Perhaps how to update them in the future?
> (Do we touch the header, or is it just some macros we define
> outside).
ok, I'll amend the commit message with the following information:
The project home page can be found at https://qoiformat.org with
a single header file reference implementation of encoder/decoder
that is currently hosted at https://github.com/phoboslab/qoi.
There is no plan for future version, this is a frozen format.

> > diff --git a/lib/gui/qoi.c b/lib/gui/qoi.c
> > new file mode 100644
> > index 0000000000..f6c1bc1b94
> > --- /dev/null
> > +++ b/lib/gui/qoi.c
> 
> License statement missing.
ok

> > +
> > +	pr_debug("qoi: %d x %d  x %d data@0x%p\n", img->width, img->height,
> > +		 img->bits_per_pixel, img->data);
> 
> Nitpick: You can define a common prefix
> with pr_fmt at the top of the file, e.g
> 
> #define pr_fmt(fmt) "qoi: " fmt
sure will do

> > +	return img;
> > +}
> > +
> > +static void qoi_close(struct image *img)
> > +{
> > +	free(img->data);
> 
> Curious API that open() is allocating, but close's caller is
> the one resposible for freeing. Should probably be fixed up.
> 
> > +static struct image_renderer qoi = {
> > +	.type = filetype_qoi,
> > +	.open = qoi_open,
> > +	.close = qoi_close,
> > +	.renderer = qoi_renderer,
> > +	.keep_file_data = 1,
> 
> Do you really need this? For bmp, it makes sense, because the pixel data isn't
> compressed, so there are direct pointers into it. But if you uncompress into a
> newly allocated buffer, you should not need to keep (and leak) inbuf's content
> 
You're right, I haven't look at what .keep_file_data was for and, it is
indeed not needed.

> > +};
> > +
> > +static int qoi_init(void)
> > +{
> > +	return image_renderer_register(&qoi);
> > +}
> > +fs_initcall(qoi_init);
> > diff --git a/lib/gui/qoi.h b/lib/gui/qoi.h
> > new file mode 100644
> > index 0000000000..988f9edcb4
> > --- /dev/null
> > +++ b/lib/gui/qoi.h
> > @@ -0,0 +1,671 @@
> > +/*
> > +
> > +QOI - The "Quite OK Image" format for fast, lossless image compression
> > +
> > +Dominic Szablewski - https://phoboslab.org
> > +
> > +
> > +-- LICENSE: The MIT License(MIT)
> 
> Can you turn this into a SPDX-License-Identifier: please?
ok

> > +
> > +Copyright(c) 2021 Dominic Szablewski
> > +
> > +Permission is hereby granted, free of charge, to any person obtaining a copy of
> > +this software and associated documentation files(the "Software"), to deal in
> > +the Software without restriction, including without limitation the rights to
> > +use, copy, modify, merge, publish, distribute, sublicense, and / or sell copies
> > +of the Software, and to permit persons to whom the Software is furnished to do
> > +so, subject to the following conditions :
> > +The above copyright notice and this permission notice shall be included in all
> > +copies or substantial portions of the Software.
> > +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
> > +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> > +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> > +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> > +SOFTWARE.
> > +





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

