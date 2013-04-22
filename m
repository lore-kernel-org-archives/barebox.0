Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f352.mail.ru ([217.69.140.248])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUJRt-0004y5-Vm
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 16:18:39 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 22 Apr 2013 20:18:31 +0400
Message-ID: <1366647511.938569164@f352.mail.ru>
In-Reply-To: <20130422161022.GI32299@pengutronix.de>
References: <1366620830-8574-1-git-send-email-linux@rempel-privat.de>
 <20130422161022.GI32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAxLzNdIGNmaV9mbGFzaDogYWRkIHNoaWZ0IG9wdGlv?=
 =?UTF-8?B?biBmb3Igc29tZSBjZmkgbWVtb3J5IGNoaXBz?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?B?T2xla3NpaiBSZW1wZWw=?= <bug-track@fisher-privat.net>

> From: Oleksij Rempel <bug-track@fisher-privat.net>
> > 
> > diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
> > index 8f818ba..6c7cac4 100644
> > --- a/drivers/nor/cfi_flash.h
> > +++ b/drivers/nor/cfi_flash.h
> > @@ -295,7 +295,11 @@ static inline u64 flash_read64(void *addr)
> >   */
> >  static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
> >  {
> > +#ifdef CONFIG_DRIVER_CFI_BANK_SHIFT_1
> > +	return ((uchar *) (info->start[sect] + (offset * info->portwidth << 1)));
> > +#else
> >  	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
> > +#endif
> >  }
> 
> Please make this a runtime option configurable via platform data. Making
> this a compile time option is not so nice.
> Or could this be automatically detected?

Do not treat my opinion as solution but I think better if we
make this option as integer as make it available always.
In this case we can avoid using #ifdef.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
