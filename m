Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBnho-0004JZ-Vl
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 13:09:46 +0000
Date: Thu, 6 Oct 2011 15:09:34 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20111006130934.GC1494@sapphire.tkos.co.il>
References: <4E8C6F3D.40308@ge.com> <20111006075118.GS31404@pengutronix.de>
	<4E8D870B.8050207@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E8D870B.8050207@ge.com>
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
Subject: Re: bootm
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Thu, Oct 06, 2011 at 11:46:35AM +0100, Renaud Barbier wrote:
> It would be for a ppc.
> 
> I am evaluating barebox on a mpc8544.

Can you share your experience with running Barebox on this e500 based chip?  
Have you added anything to the generic arch/ppc/ code?

I'm currently working with an e500 based chip (P1011), so I'm very much 
interested in your experience.

baruch

> On 06/10/11 08:51, Sascha Hauer wrote:
> >On Wed, Oct 05, 2011 at 03:52:45PM +0100, Renaud Barbier wrote:
> >>Hello,
> >>I am looking for information on how to boot Linux with a device tree.
> >>
> >>Basically, I have a  uImage and a device tree(dtb) and with U-boot I
> >>used to do:
> >>bootm uImage_address -- dtb_address
> >>
> >>How does it work with barebox?
> >As Jean-Christophe pointed out the architecture is important. On
> >Arm we do not have devicetree support in any official tree, but
> >I already have patches.
> >
> >Sascha

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
