Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ironport.klsmartin.com ([212.211.191.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzUu-0004I8-01
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:30:49 +0000
From: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
Date: Mon, 14 Oct 2019 12:30:27 +0000
Message-ID: <3e41e4224f8c5c848c4de1c1e439f17583b870d9.camel@klsmartin.com>
References: <ec68b5aec8f0a144e9391dd1dfabe129ecdd4b6a.camel@klsmartin.com>
 <20191014122546.ey5bjayf7ilkohpj@pengutronix.de>
In-Reply-To: <20191014122546.ey5bjayf7ilkohpj@pengutronix.de>
Content-Language: de-DE
Content-ID: <9C3837B7905DCB4592C8FE8C7C52CD3D@klsmartin.com>
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

Hi Sascha,

Am Montag, den 14.10.2019, 14:25 +0200 schrieb Sascha Hauer:
> Hi Leif,
> 
> On Mon, Oct 07, 2019 at 02:15:39PM +0000, Middelschulte, Leif wrote:
> > Hi,
> > 
> > setting up GPT on an iMX6, I noticed a small bug subject to
> > CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE that leads to unparsed GPTs.
> > 
> > Background: The iMX supports the mmc user partition as bootmedia
> > source too.
> > 
> > Problem: The (additional) filetype check[0] fails, if the given buffer
> > contains multiple, subsequent file(type)s. The buffer might contain
> > the beginning of a disk that contains i.e. a Barebox image *and* a
> > partition table. The function file_detect_type returns a single (first
> > recognized) type[1]. In my case, it returns the Barebox image type.
> 
> Looks like the file_detect_type() there should be replaced with
> file_detect_partition_table().
> 
> > 
> > There is a comment about this additional check noting it will be
> > mandatory as it will be "[..] added to the EFI Spec. per Intel after
> > v1.02.". Anybody can elaborate on that?
> > That feedback could help to understand why file_detect_partition_table
> > is insufficient in this case.
> 
> What makes you think that file_detect_partition_table() is insufficient?
Nothing makes *me* think it's insufficient. Yet the author explicitly added this *additional* check and did *not* use the suggested alternative function.

That's why I asked. I'm not familiar with the spec. Maybe it is mandates such a treatment?
> 
> Sascha
> 

Leif
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
