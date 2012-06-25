Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj6rK-0005dG-92
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 10:49:34 +0000
Date: Mon, 25 Jun 2012 12:48:59 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120625104859.GA10844@sig21.net>
References: <CAA4bVAHvo6i3uOoEao=q8RCP+i3NZ+9XnmvA=mKjEYZztrmB2g@mail.gmail.com>
 <20120625085323.GA10406@sig21.net>
 <CAA4bVAHqT37AuMbBUia4FGSdayQXvSYJ63hok_fYSaZpZHQK6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHqT37AuMbBUia4FGSdayQXvSYJ63hok_fYSaZpZHQK6A@mail.gmail.com>
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

On Mon, Jun 25, 2012 at 02:07:34PM +0400, Antony Pavlov wrote:
> On 25 June 2012 12:53, Johannes Stezenbach <js@sig21.net> wrote:
> > On Mon, Jun 25, 2012 at 11:45:06AM +0400, Antony Pavlov wrote:
> >>
> >> There is the 'cs_change' flag for *_spi_transfer() method, but this
> >> flag does not used at all!
> >
> > altera_spi.c and mic_spi.c use it, but often this is not needed (e.g. for
> > SPI flashes) so to keep the code simple and small it might be better
> > to not implement cs_change handling.
> 
> But I have not found any common code where cs_change is managed.

It doesn't need to be handled in common code, the spi_device
driver requests a cs_change if it needs one, the spi_master driver
programs the hardware to do it.  Common code in drivers/spi/spi.c
doesn't need to care.  (To clarify: cs_change does not mean
to switch from one CS to another, it means to pulse the
CS line between spi_transfers of a spi_message.  Some devices
need that in some cases.)


Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
