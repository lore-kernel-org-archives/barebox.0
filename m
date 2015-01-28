Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.altran.com ([194.98.79.84] helo=smtp5.altran.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGSmb-0000XJ-5K
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 13:35:49 +0000
From: DI PEDE Michele <michele.dipede@altran.com>
Date: Wed, 28 Jan 2015 14:35:19 +0100
Message-ID: <1588230.G27jqyn2gQ@linux-small.site>
In-Reply-To: <CAGocsp1GAvjoo7fEs6i+vNRHqKgeQ+e4rQOdzsJKyxCEMCLw=Q@mail.gmail.com>
References: <CAA4bVAHFEo=Si7NNXXFdR3vWyzpbVms8Txa8wy6MCS_aKyZVAA@mail.gmail.com>
 <CAOngqVX6ZPyUnfpEaNtGZey4Q+sfLNHeOqtt5_AMHH94=uuduw@mail.gmail.com>
 <CAGocsp1GAvjoo7fEs6i+vNRHqKgeQ+e4rQOdzsJKyxCEMCLw=Q@mail.gmail.com>
MIME-Version: 1.0
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
Subject: Re: picotcp barebox integration
To: barebox <barebox@lists.infradead.org>
Cc: Daniele Lacamera <daniele.lacamera@altran.be>

Hi all,
HEAD of development branch contains the required API for a smooth integration 
with Barebox.
User manual contains all the information for use them. There is also a small 
demo TFTP client that show how to use the application driven interface 
test/test_tftp_app_client.c. To build it just do make clean; make test; cd 
test; make.
Now should be easy to integrate out stack in Barebox code.
Let me know how the integration effort proceed. We could provide proper 
support from our side to speed up things.

If you have any question please don't esitate to contact us

Best regards
Michele Di Pede

Friday 19 December 2014 18:28:30, Michele Di Pede wrote:
> Hi all,
> I'm been very busy but I plan to work on the TFPT during the coming holidays
> to complete the it.
> 
> Regards
> 
> On Fri, Nov 28, 2014 at 8:38 PM, Daniele Lacamera
> 
> <daniele.lacamera@tass.be> wrote:
> > Hi all,
> > 
> > Michele has been busy with another assignment lately, but he has also
> > been working on the features you requested. He will update you on the
> > status of his TFTP branch soon.
> > 
> > Thanks
> > 
> > /d
> > 
> > On Fri, Nov 21, 2014 at 3:25 PM, Antony Pavlov <antonynpavlov@gmail.com> 
wrote:
> >> Hi!
> >> 
> >> What is current picotcp barebox integration status?
> >> 
> >> AFAIR latest picotcp-barebox integration discussion thread is
> >> http://lists.infradead.org/pipermail/barebox/2014-September/020732.html
> >> 
> >> --
> >> Best regards,
> >> 
> >>   Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
