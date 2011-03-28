Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q4862-0001Qe-M1
	for barebox@lists.infradead.org; Mon, 28 Mar 2011 08:46:47 +0000
Date: Mon, 28 Mar 2011 10:46:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110328084642.GG7285@pengutronix.de>
References: <AANLkTi=igwESq-rAMFfW7rpeT_P8V3gxgEBnG740nfie@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=igwESq-rAMFfW7rpeT_P8V3gxgEBnG740nfie@mail.gmail.com>
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
Subject: Re: Just how fast is barebox?
To: Geoff Smith <gjsmith@vardr.com>
Cc: barebox@lists.infradead.org

Hi Geoff,

On Mon, Mar 28, 2011 at 01:25:18PM +1000, Geoff Smith wrote:
> Apologies for the newbie question. I am looking for a fastboot option for
>  the i.MX27
> 
> I want to be capturing video data from a cold start within 300ms (preferably
> 200ms).

The best I could get out of an i.MX27 was about 700ms. The main limiting
factor is how fast you can load an image from the boot medium (Nand
flash in my case). Given that I can read from Nand with 16MB/s a 5MB
image takes about 300ms to load. I think you'll need many dirty tricks
doing this with Linux, like a massively stripped down kernel and perhaps
starting the capture in the kernel (not in the application).

I wouldn't say it's not possible, but it's definitely a hard task.

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
