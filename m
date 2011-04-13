Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.22])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9wNQ-0000cH-Hv
	for barebox@lists.infradead.org; Wed, 13 Apr 2011 09:28:45 +0000
Message-ID: <4DA56CC1.6040904@gmx.de>
Date: Wed, 13 Apr 2011 11:28:33 +0200
From: Thomas Mayer <tm.telemotive@gmx.de>
MIME-Version: 1.0
References: <4D9ED2EC.8070406@telemotive.de>
	<20110408132127.GW7285@pengutronix.de>
In-Reply-To: <20110408132127.GW7285@pengutronix.de>
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
Subject: Re: Update barebox on mmc without touching partition table
To: barebox@lists.infradead.org

Hi Sasha,

thanks for your help!

Am 08.04.2011 15:21, schrieb Sascha Hauer:
> Hi Thomas,
>
> On Fri, Apr 08, 2011 at 11:18:36AM +0200, Thomas Mayer wrote:
>> Hi,
>>
>> to copy barebox to a mmc I use the command "dd if=barebox.bin
>> of=/dev/sdb bs=512 seek=2 skip=2&&  sync". So I don't touch the
>> first 0x400 bytes with contains the partition table and everything
>> is fine.
>>
>> But I want to write a little script to update barebox itself via
>> tftp. So I create a partition "/dev/self0" (0x00000 to 0x40000) and
>> update barebox with "tftp barebox.bin /dev/self0". The problem is
>> that barebox write the first 0x400 bytes too and overwrite the
>> partition table .
>>
>> Is there any way to "seek" and "skip" with barebox?
> Not directly. What you can do is this:
>
> tftp barebox.bin
> memcpy -s barebox.bin -d /dev/self0 512 0
It's working, but I have to use "1024" instead of "512". Also I have to 
change my partition init from
"devfs_add_partition("disk0", 0x000000, 0x040000, PARTITION_FIXED, 
"self0");"
to
devfs_add_partition("disk0", 0x000400, 0x040000, PARTITION_FIXED, "self0");


Regards,
Thomas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
