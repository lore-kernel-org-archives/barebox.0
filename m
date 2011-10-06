Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og101.obsmtp.com ([64.18.0.141])
	by canuck.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBlTP-000377-B7
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 10:46:44 +0000
Message-ID: <4E8D870B.8050207@ge.com>
Date: Thu, 06 Oct 2011 11:46:35 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <4E8C6F3D.40308@ge.com> <20111006075118.GS31404@pengutronix.de>
In-Reply-To: <20111006075118.GS31404@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bootm
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks.
It would be for a ppc.

I am evaluating barebox on a mpc8544.



On 06/10/11 08:51, Sascha Hauer wrote:
> On Wed, Oct 05, 2011 at 03:52:45PM +0100, Renaud Barbier wrote:
>> Hello,
>> I am looking for information on how to boot Linux with a device tree.
>>
>> Basically, I have a  uImage and a device tree(dtb) and with U-boot I
>> used to do:
>> bootm uImage_address -- dtb_address
>>
>> How does it work with barebox?
> As Jean-Christophe pointed out the architecture is important. On
> Arm we do not have devicetree support in any official tree, but
> I already have patches.
>
> Sascha
>
>

-- 
Renaud Barbier
14, Links Place
3/2 great Michael House
Edinburgh, EH67EN
Tel: +44 131 561 3532


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
