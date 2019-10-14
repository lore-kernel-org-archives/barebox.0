Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ironport.klsmartin.com ([212.211.191.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK00D-0004oU-U4
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 13:03:11 +0000
From: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
Date: Mon, 14 Oct 2019 13:02:53 +0000
Message-ID: <0005110270ab4d43a4d43b791560852b96ee9313.camel@klsmartin.com>
References: <ec68b5aec8f0a144e9391dd1dfabe129ecdd4b6a.camel@klsmartin.com>
 <20191014122546.ey5bjayf7ilkohpj@pengutronix.de>
 <3e41e4224f8c5c848c4de1c1e439f17583b870d9.camel@klsmartin.com>
 <20191014124557.dmiaqmzclli2snnk@pengutronix.de>
In-Reply-To: <20191014124557.dmiaqmzclli2snnk@pengutronix.de>
Content-Language: de-DE
Content-ID: <7E013CE2F476A741BA2481DDA2EFC900@klsmartin.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: erroneous behavior for iMX+GPT
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Montag, den 14.10.2019, 14:45 +0200 schrieb s.hauer@pengutronix.de:
> On Mon, Oct 14, 2019 at 12:30:27PM +0000, Middelschulte, Leif wrote:
> > Hi Sascha,
> > 
> > Am Montag, den 14.10.2019, 14:25 +0200 schrieb Sascha Hauer:
> > > Hi Leif,
> > > 
> > > On Mon, Oct 07, 2019 at 02:15:39PM +0000, Middelschulte, Leif wrote:
> > > > Hi,
> > > > 
> > > > setting up GPT on an iMX6, I noticed a small bug subject to
> > > > CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE that leads to unparsed GPTs.
> > > > 
> > > > Background: The iMX supports the mmc user partition as bootmedia
> > > > source too.
> > > > 
> > > > Problem: The (additional) filetype check[0] fails, if the given buffer
> > > > contains multiple, subsequent file(type)s. The buffer might contain
> > > > the beginning of a disk that contains i.e. a Barebox image *and* a
> > > > partition table. The function file_detect_type returns a single (first
> > > > recognized) type[1]. In my case, it returns the Barebox image type.
> > > 
> > > Looks like the file_detect_type() there should be replaced with
> > > file_detect_partition_table().
> > > 
> > > > 
> > > > There is a comment about this additional check noting it will be
> > > > mandatory as it will be "[..] added to the EFI Spec. per Intel after
> > > > v1.02.". Anybody can elaborate on that?
> > > > That feedback could help to understand why file_detect_partition_table
> > > > is insufficient in this case.
> > > 
> > > What makes you think that file_detect_partition_table() is insufficient?
> > Nothing makes *me* think it's insufficient. Yet the author explicitly
> > added this *additional* check and did *not* use the suggested
> > alternative function.
> 
> Perhaps because file_detect_partition_table() didn't exist as the efi
> partition parser was added to barebox. Also I would think that
> Jean-Christophe (the original author) didn't encounter these
> ambiguities. It's probably very i.MX specific that a GPT is where the
> barebox header is.
Fair enough. I've created a pull request[0] on GitHub that contains the suggested fix.

[0] https://github.com/saschahauer/barebox/pull/6
> 
> Sascha
> 

Leif
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
