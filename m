Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6xXL-0005Wa-K6
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 06:48:00 +0000
Date: Wed, 7 Aug 2013 08:47:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130807064736.GG26614@pengutronix.de>
References: <CACbe1ruo=co1qZAJqaBYG7R6MXcL2V9NYHT6BsKyidLg9i+xHg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACbe1ruo=co1qZAJqaBYG7R6MXcL2V9NYHT6BsKyidLg9i+xHg@mail.gmail.com>
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
Subject: Re: barebox-2013.07.0 / barebox-2013.08.0 splash, bmp, png
 problems on Mini2440 -- SOLVED
To: Pawel Suchanecki <pawel.suchanecki@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 06, 2013 at 11:30:06PM +0200, Pawel Suchanecki wrote:
> 2013/8/6 Pawel Suchanecki <pawel.suchanecki@gmail.com>:
> > What am I doing wrong?
> 
> Hello again,
> 
> I found the solution, it was only due to my mistake, as I selected the
> wrong LCD type.
> 
> When changed to support A70:
> 
> [ ] Support N35 display (240x320)
> [*] Support A70 display (800x480)
> 
> my 7" LCD shows the barebox logo just fine!

Nice. I was afraid I broke this.

> 
> Sorry for bothering with ... stupid question.

No problem

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
