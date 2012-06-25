Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj53Q-00070a-6Q
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 08:53:53 +0000
Date: Mon, 25 Jun 2012 10:53:23 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120625085323.GA10406@sig21.net>
References: <CAA4bVAHvo6i3uOoEao=q8RCP+i3NZ+9XnmvA=mKjEYZztrmB2g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHvo6i3uOoEao=q8RCP+i3NZ+9XnmvA=mKjEYZztrmB2g@mail.gmail.com>
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
Subject: Re: SPI chip select problem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi,

On Mon, Jun 25, 2012 at 11:45:06AM +0400, Antony Pavlov wrote:
> I have added spi controller driver for one of my MIPS boards and
> found, that there is a problem with chip select.
> 
> During initialisation we call *_spi_setup() method. It switch chip
> select and frequency for every probing spi slave chip.
> But after initialisation __we never__ call this method. So if I have
> more than 1 spi slave chip, I can use only last of them.
> 
> There is the 'cs_change' flag for *_spi_transfer() method, but this
> flag does not used at all!

altera_spi.c and mic_spi.c use it, but often this is not needed (e.g. for
SPI flashes) so to keep the code simple and small it might be better
to not implement cs_change handling.

> I have made quick-and-dirty patch:
> 
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -196,6 +196,8 @@ EXPORT_SYMBOL(spi_register_master);
> 
>  int spi_sync(struct spi_device *spi, struct spi_message *message)
>  {
> +       spi->master->setup(spi);
> +
>         return spi->master->transfer(spi, message);
>  }

I noticed this issue, too, but since barebox spi code is similar
to linux code I'd like to point out linux drivers must not modify the
chip select in ->setup().  Since bare box only does synchronous transfers
it isn't an issue, but in linux ->setup() is called when
a new message is queued, at this time the previous message
might still be transferring.  Thus the only purpose of ->setup()
is to do error checking on the provided parameters.
Chip select, frequency etc. must be set in ->transfer().
In the interest of portability/similarity barebox drivers should
do the same as linux.

That said, your proposed patch still looks OK.
BTW, ->cleanup() is also never called, but so far no driver needs it...


Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
