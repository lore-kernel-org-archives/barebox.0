Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx-relay34-hz1.antispameurope.com ([94.100.133.210])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpEL-0003RY-V7
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 06:40:32 +0000
References: <d00a48e4-406c-c4ae-7d2d-4c89c3428fda@eks-engel.de>
 <20190711203617.4014fbc3a8c357e2de2d422d@gmail.com>
From: Benjamin Beckmeyer <beb@eks-engel.de>
Message-ID: <4a609ae9-d3f4-8271-ca45-da1327cfa559@eks-engel.de>
Date: Fri, 12 Jul 2019 08:40:13 +0200
MIME-Version: 1.0
In-Reply-To: <20190711203617.4014fbc3a8c357e2de2d422d@gmail.com>
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
Subject: Re: MII command to read and write specific registers
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> On Thu, 11 Jul 2019 15:30:01 +0200
> Benjamin Beckmeyer <beb@eks-engel.de> wrote:
>
>> Hey all,
>> is there a possibility to read/write specific registers from/to different MII addresses?
>>
>> I know that there is miitool but it just can give me the first 16 registers of a PHY.
>> But I need write specific registers e.g. MII addr 2 register 0 and read MII addr 2 
>> register 1. I know uboot is having the mii command(exactly what I would need), and I 
>> have seen that there were parameters for address and register in miitool but they 
>> were deleted lastly.
>>
> Hi Benjamin!
>
> You can use /dev/mdio* devices for reading/writing MII registers.
> E.g.
>   md -s /dev/mdio0-phy00
>   mw -d /dev/mdio0-phy00 -w 0 0x12345678
>
> Just after barebox boot there is no /dev/mdio* devices.
> After network interface initialization (e.g. after ifup command) or
> after miitool command  the /dev/mdio* devices appear.

Hi Antony,

thanks for your reply. That will help me a lot.

Best regards,
Benjamin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
