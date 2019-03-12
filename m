Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3aVo-0007zb-8s
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 06:03:42 +0000
References: <20190311134125.10946-1-d.brandt@phytec.de>
 <CAHQ1cqHAGSyzJbxeEKW6-Y8g79nv3iMZZGr-qy2pY401=V5b5w@mail.gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <8b6352d3-bc8d-4564-9eee-0e0eda70515e@pengutronix.de>
Date: Tue, 12 Mar 2019 07:03:34 +0100
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqHAGSyzJbxeEKW6-Y8g79nv3iMZZGr-qy2pY401=V5b5w@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: [PATCH] commands: bootaux: New command bootaux for iMX
To: Andrey Smirnov <andrew.smirnov@gmail.com>, David Brandt <d.brandt@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi,

On 12.03.19 02:37, Andrey Smirnov wrote:
> On Mon, Mar 11, 2019 at 6:41 AM David Brandt <d.brandt@phytec.de> wrote:
>>
>> This patch adds the bootaux command which starts
>> auxiliary cores of iMX processors, currently only
>> for iMX8MQ. This is based on the u-boot-imx
>> command and shares the behaviour.
>>
>> The currently unnecessary parameter for the core
>> to start is necessary for the iMX8QM and other
>> processors having multiple auxiliary cores.
>>
> 
> Not saying that there's anything wrong with this patch, but I am
> guessing that upstream Linux will eventually implement this
> functionality using remoteproc framework. Maybe now would be a good
> time to add a very basic version of it to Barebox? Another option to
> make this a little bit more flexible would be to implement this using
> firmwaremgr framework similar to
> drivers/frimware/{socfpga.c,altera_serial.c}. Anyway, just a couple of
> suggestions that I had.

I agree with remoteproc here.

The task of remoteproc on linux is:
- parse specially formated ELF file:
- Register needed resources extracted from ELF
- prepare clocks
- do address translation
- kick on the CPU

The main issue of linux part is to dunamically patch devicetree and tell master linux 
instance about IP Cores which was migrated for master CPU to the slave CPU.

With barebox this issues can be solved. First of all, barebox already has ELF parser. So 
it can be reused. The drivers/remoteproc/imx_rproc.c from linux can probably be ported as 
is. As soon as first step done, we would be able to patch devicetree in barebox and gave 
it over to linux. So, we will be able to tell linux to let some clocks on and do not touch 
reserved memory areas.

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
