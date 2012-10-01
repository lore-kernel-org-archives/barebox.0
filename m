Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TIfQZ-0006F4-06
 for barebox@lists.infradead.org; Mon, 01 Oct 2012 12:48:52 +0000
Date: Mon, 1 Oct 2012 14:48:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121001124845.GQ1322@pengutronix.de>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <CAA4bVAG-yzYGNb4mNGTT=hcz1EwAcgDZyKVWnZ-aM8AVaN3wmg@mail.gmail.com>
 <20120930140225.GR26553@game.jcrosoft.org>
 <CAAMcf8Aa00YqVG-87F1Lk+_oCHwrRCeCTKE7G9g_QDK1C2tMcw@mail.gmail.com>
 <20120930152919.GT26553@game.jcrosoft.org>
 <CAAMcf8Bw5vB7-9aFUo22yegTg+AhtTR35340DYnxb2qZfupLKA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8Bw5vB7-9aFUo22yegTg+AhtTR35340DYnxb2qZfupLKA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Please do not top post.

On Sun, Sep 30, 2012 at 06:00:06PM +0200, vj wrote:
> It's out of my control:
>  The OMAP4 processor has an internal ROM which is in charge of the USB port
> for booting.
> Once the user application is running the USB communications are not closed
> and can be reused by the user application through the ROM public API.
> The OMAP4 ROM is implemented in a way it requires interrupts enabled.

That explains why changing the vector address does not work with the ROM
code.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
