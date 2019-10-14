Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1z2-00016V-K6
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 15:10:06 +0000
Date: Mon, 14 Oct 2019 17:09:54 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20191014150954.dc7kyboblvlpvswm@tellis.lin.mbt.kalray.eu>
References: <20191010081503.15254-1-jmaselbas@kalray.eu>
 <20191010081503.15254-4-jmaselbas@kalray.eu>
 <20191014114248.o2k4wsbuumqwbnaj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014114248.o2k4wsbuumqwbnaj@pengutronix.de>
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
Subject: Re: [PATCH 4/6] usb: string: Use le16_to_cpu for langid
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > --- a/drivers/usb/core/usb.c
> > +++ b/drivers/usb/core/usb.c
> > @@ -925,7 +925,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
> >  			goto error;
> >  		} else {
> >  			dev->have_langid = -1;
> > -			dev->string_langid = tbuf[2] | (tbuf[3] << 8);
> > +			dev->string_langid = le16_to_cpu(*((__le16 *)&buf[2]));
> 
> You also changed from tbuf to buf. Is this intentional?
Good catch,

No this is not intentional it should still be `tbuf` here, `buf` name
must be used when applying patch number 6, here it will cause an error
as buf is a pointer the output string not the result of the usb request.

Jules

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
