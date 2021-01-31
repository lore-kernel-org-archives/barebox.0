Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6IWJ-0001j1-DA
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 19:36:28 +0000
References: <20210127164937.20328-1-jmaselbas@kalray.eu>
 <91ec3053-201d-ff02-0f78-6d86a6b8a0f0@pengutronix.de>
 <20210129105152.GA22732@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ef7e5e11-9aef-49dc-c6f9-32a232c2926b@pengutronix.de>
Date: Sun, 31 Jan 2021 20:34:07 +0100
MIME-Version: 1.0
In-Reply-To: <20210129105152.GA22732@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
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
Subject: Re: [RFC PATCH] usb: gadget: dfu: Wrap fs operation in workqueue
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

Hello Jules,

On 29.01.21 11:51, Jules Maselbas wrote:
> Hi Ahmad,
> 
> On Fri, Jan 29, 2021 at 10:51:18AM +0100, Ahmad Fatoum wrote:
>> Hello Jules,
>>
>> On 27.01.21 17:49, Jules Maselbas wrote:
>>> File system operation shouldn't be executed in a poller. Use
>>> a workqueue to delay filesystem operation to command context.
>>>
>>> This is an RFC, extra work must be done to properly handle error
>>> cases and dfu cleanup.
>>
>> I erroneously thought the poller is within the DFU bits. I wonder what
>> side-effect moving the whole USB gadget polling into a workqueue would
>> have. In that case, we wouldn't need to any changes for DFU itself.
>>
> If I understood correctly you're suggesting to wrap the entire dfu
> gadget inside a poller. I have not tried this and it might work.
> However wrapping each fs operation allow the dfu gadget to respond
> to GET_STATUS queries will erase/write operation are on-going.

To allow running in the "background", the UDC calls into the gadget code
in a poller. I was wondering if replacing that poller with a workqueue
would just make the problem go away, not for DFU. It now know it wouldn't:
Work queues work in shell context and doing console stuff in shell context
(via ttyACM gadget) is not a wise choice. So please dismiss my suggestion ^^.

> 
> Jules
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
