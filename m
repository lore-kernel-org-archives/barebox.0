Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x235.google.com ([2607:f8b0:4002:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrN9t-0000VN-Be
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 07:59:53 +0000
Received: by mail-yk0-f181.google.com with SMTP id 131so3365834ykp.12
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 00:59:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140602072450.GW15686@pengutronix.de>
References: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
 <CAOpc7mHG9eaRRWkYxazwRCeVrAXB_LPLuD2zPp8WLOj9yiTVnQ@mail.gmail.com>
 <20140521181123.22fa7c295a12523e27d6964b@gmail.com>
 <20140602072450.GW15686@pengutronix.de>
Date: Mon, 2 Jun 2014 09:59:31 +0200
Message-ID: <CAOpc7mGZGM7K3TxKQhBb1FesfazzViV5ujumPf8ihAjGNGJNwQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH] [RFC] [WIP] commands: add tree view capable lsusb
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hmm, I like that it does a rescan, so that it always display the
currently connected USB device automatically.

However, for me a usb_rescan() isn't really hardware manipulation.
Sure, the USB device will get send down it's ID during enumeration,
but it doesn't turn things on/off, erase, program it etc.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
