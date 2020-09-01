Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dm6nam11on2137.outbound.protection.outlook.com
 ([40.107.223.137] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD3Zj-00083N-Pt
 for barebox@lists.infradead.org; Tue, 01 Sep 2020 10:31:40 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Tue, 1 Sep 2020 10:31:36 +0000
Message-ID: <MN2PR16MB313561D8BE9DFFB84707FA49912E0@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135C2AADD985DE82E3E787591400@MN2PR16MB3135.namprd16.prod.outlook.com>
 <20200817041257.GM13023@pengutronix.de>
In-Reply-To: <20200817041257.GM13023@pengutronix.de>
Content-Language: en-US
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
Subject: RE: barebox:ubi attach time
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



> 
> Hi Renaud,
> 
> On Fri, Aug 14, 2020 at 01:49:25PM +0000, Barbier, Renaud wrote:
> > Just to see if somebody has the following problem:
> >
> > We have PPC or ARM platforms with a NOR containing barebox and a UBI
> > volume with an ITB image.  The File system is on NAND.
> >
> > If I boot the system, ubiattach and mount the NOR volume, then detach.
> > On reboot it takes more time for barebox to ubiattach  the NOR boot
> > volume. I have noticed that with on 2019.07 barebox branch and
> > 2020.03.
> >
> > I ubidetach the volume from barebox then boot time is restored.
> 
> Are you using fastmap?
[Barbier, Renaud] 
Indeed. We do.
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
