Delivery-date: Mon, 20 Oct 2025 14:59:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTn-009tqU-1j
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTg-0000zn-86
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xw7Z3IaBGVIISuRP/C+8E6q8ENNVu4COIpiQuil8j7c=; b=P1noMGVoHlsaFjvx0uoTop6zLn
	mNoF2L8f3JaI5xvj/VAtChEFLcsi4CPJV7JSJbpxzwZXw8+iVQSKlL7gN/cC8u+/a873MjkbPcjY8
	v8aQnfAiejncf0zUBeiYLGF129N9nvhTX+rv/y3SkibJXBGBWrEJFLuoYa5riyAGnyPmTFSKBoKhH
	YOyExC8EB6/cilXllDKpLFYpNYi7cW1yOt4k3ugihHUmJ6U7LWBMyFBZma1iS/HucI0xxu7iJvIMP
	o1n9QRXm4VeozcLZyIM6UHx/D3iMg6jKQ9sUArjJ6pp3DKzD6ItM15ocK91UtwYJ9uAzNPq7f81ae
	fOlzYimg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSr-0000000DfTJ-19xd;
	Mon, 20 Oct 2025 12:58:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSl-0000000DfGk-2QPb
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=xw7Z3IaBGVIISuRP/C+8E6q8ENNVu4COIpiQuil8j7c=; b=q2bznFA2a84acLuFQn78xjLLr8
	F4ZwBcGOfntrTR/ZxsaDN0iyY0b3WP7ueOCkdftNKmTi2kTYk6FA9h+Dn9UlsJ2vYSz1e0qFa2HB7
	swS11NDGrTmiv5RuZAzb9DLQfk+RCftB0Z9TeKpj9IiTSa2kkJqwC1I6bnks53arj5vmzPMASUrHB
	bOB1fQsrBYMRlugduuSvZgQcZXELbBDyqBiyNDiIuCj/CMynrmQ9kLlRvoHIAjgRoQQaCfXeDfpUs
	2Nyk/oc87wKoOw/wH3w/YqGdwDKKLj7hmx2AVMDCsXiQ9UT6ppFwQopEf/Af4R+s1qPV3trfw5ADf
	vZAmCw8Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSh-00000007hbA-1bbc
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vApSd-0008DZ-J4
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAlmH-004W8F-1n;
	Mon, 20 Oct 2025 11:02:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAlmH-007Gr9-1R;
	Mon, 20 Oct 2025 11:02:05 +0200
Date: Mon, 20 Oct 2025 11:02:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aPX6jRJmQDcVRudV@pengutronix.de>
References: <20251017120406.1348897-1-m.felsch@pengutronix.de>
 <20251017120406.1348897-3-m.felsch@pengutronix.de>
 <aPX2dGXUM9BFm4qe@pengutronix.de>
 <20251020084924.6ytubm6byqw22iw3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251020084924.6ytubm6byqw22iw3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135808_682844_02424D2B 
X-CRM114-Status: GOOD (  28.39  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] lib: hexdump: make use of pr_debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 20, 2025 at 10:49:24AM +0200, Marco Felsch wrote:
> On 25-10-20, Sascha Hauer wrote:
> > On Fri, Oct 17, 2025 at 02:03:35PM +0200, Marco Felsch wrote:
> > > The hexdump library was ported from Linux which supports different
> > > printk() level. Because the barebox print* facility is different
> > > compared to the one from Linux the barebox printk() doesn't support
> > > levels. Therefore the level is always set to an empty string.
> > > 
> > > Furthermore all barebox printk() calls aren't recorded by the internal
> > > barebox_logbuf because they are mostly used for command prints. Linux on
> > > the other hand record each printk() print.
> > > 
> > > Not recording the output can be an issue on systems which don't have a
> > > hw-console but a USB-ACM console, because the hexdump call may already
> > > occurred before the console was ready.
> > > 
> > > Make use of pr_debug() instead to record the output within the
> > > barebox_logbuf to be available later on via dmesg. Using pr_debug()
> > > should be fine since it is mostly used for debugging/development
> > > purpose.
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  lib/hexdump.c | 9 +++------
> > >  1 file changed, 3 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/lib/hexdump.c b/lib/hexdump.c
> > > index 940c4eec64e9..ab5e3cf727ec 100644
> > > --- a/lib/hexdump.c
> > > +++ b/lib/hexdump.c
> > > @@ -284,16 +284,13 @@ void dev_print_hex_dump(struct device *dev, const char *level,
> > >  
> > >  		switch (prefix_type) {
> > >  		case DUMP_PREFIX_ADDRESS:
> > > -			printk("%s%s%s%p: %s\n", level, name, prefix_str,
> > > -			       ptr + i, linebuf);
> > > +			pr_debug("%s%s%p: %s\n", name, prefix_str, ptr + i, linebuf);
> > 
> > pr_debug is only compiled in when DEBUG is defined. This means you have
> > to add a "#define DEBUG" in lib/hexdump.c to make the messages visible
> > printed in another file, or alternatively have to define DEBUG globally.
> 
> Yep, this is true and I forgot about that drawback :/
> 
> > I think we should rather replace the const char *level argument with a
> > unsigned int level argument expecting one of MSG_* and use pr_print() here.
> 
> What about keeping the Linux API but converting it back to int?

Not possible:

#define KERN_EMERG      ""   /* system is unusable                   */
#define KERN_ALERT      ""   /* action must be taken immediately     */
#define KERN_CRIT       ""   /* critical conditions                  */
#define KERN_ERR        ""   /* error conditions                     */
#define KERN_WARNING    ""   /* warning conditions                   */
#define KERN_NOTICE     ""   /* normal but significant condition     */
#define KERN_INFO       ""   /* informational                        */
#define KERN_DEBUG      ""   /* debug-level messages                 */

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


