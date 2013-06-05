Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk9g0-0004Zd-Ql
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 09:06:41 +0000
Message-ID: <51AEFF73.204@ge.com>
Date: Wed, 05 Jun 2013 10:05:55 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
 <20130601092018.GO32299@pengutronix.de> <51AC6286.5030001@ge.com>
 <51AE1D69.4050205@ge.com> <20130605071211.GQ32299@pengutronix.de>
In-Reply-To: <20130605071211.GQ32299@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] gianfar: prevent resource conflict
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 05/06/2013 08:12, Sascha Hauer wrote:
> On Tue, Jun 04, 2013 at 06:01:29PM +0100, Renaud Barbier wrote:
>> Hello Sacha,
>> I applied your patch and try it on our mpc8544 based board
>> with a few modification.
>> This board uses eTSEC1. This means all 3 regions have the same
>> base address.
>
> I think I misunderstood the situation. I thought that the mdio register
> space is separate from the network interface register space. So in
> reality the mdio register space is inside the network register (the
> TSEC) space, but one TSEC instance needs the mdio bus from the other
> one, right?

Yes.
All eTSEC uses the eTSEC1 region to access the mdio bus for external 
PHYs. Port eTSEC1 3 regions (Ethernet reg, External phy access, TBI 
interface) are in fact just one region.

For eTSEC2, the Ethernet registers and TBI interface are mapped by the 
same region but are not the same as the other port regions.
The same applies for eTSEC3.

For TSEC version 2, the mapping is a bit different.

I will  implement your suggestions below.

>
> If that's the case then it's probably best to register a phy driver for
> each phy in a coredevice_initcall like I suggested and then use
> dev_get_mem_region in the phy driver instead of dev_request_mem_region.
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
