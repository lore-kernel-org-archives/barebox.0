Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out6.bezeqint.net ([192.115.188.206])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTCbt-0007O7-69
	for barebox@lists.infradead.org; Sun, 05 Jun 2011 12:39:18 +0000
Message-ID: <4DEB78D0.6070408@wellsense-tech.com>
Date: Sun, 5 Jun 2011 15:38:40 +0300
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
References: <4DEB6D69.5030003@wellsense-tech.com>
	<201106051411.55383.jbe@pengutronix.de>
In-Reply-To: <201106051411.55383.jbe@pengutronix.de>
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
Subject: Re: protecting env partitions from bad blocks
To: Juergen Beisert <jbe@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Juergen,

Thanks for your reply.
Please correct me if I'm wrong here, but from what you are saying, if my 
flash has a block
size of 512KB (thats the erase size also) and I define the env partition 
to have say 5 blocks with one that is bad
I'm covered if I do my read/write operations using a bb device.

Also, say a block gets wear out after extended use, will it be marked 
bad after a failed write operation for example?
I think the quiestion above is actually if Barebox can handle a block 
going bad in it's environment?

Thanks,

Boaz.

On 06/05/11 15:11, Juergen Beisert wrote:
> Hi,
>
> Boaz Ben-David wrote:
>> I want to protect the env partition on my device from bad blocks
>> (created during operation or already there out of the factory).
> Maybe you mean the same, but you cannot really _protect_ them from bad blocks.
>
>> Couldn't find any good documentation regarding this issue, so I have
>> some questions:
>>
>> 1. Exactly what capabilities the bb devices in Barebox give me?
> Handling a flash based memory in a linear manner, even if there are "holes" in
> the memory.
>
> non-bb |---------------------|BB|------------------------------|
>                             |---ESU--|
> bb     |-----------------------------------------------|
>
> Reading the "non-bb" will give you an error message, when you try to read from
> the offset the BadBlock is located. Reading the "bb" silently skips the
> BadBlock for you. By the price the usable size is smaller.
> ESU is a "erase size unit" you always will lose if it contains a bad block.
>
>> 2. I was thinking of somehow assigning the env partition larger than
>> required in order to later
>> handle bad blocks by moving the block currenly being used to be the
>> first good block.
>> Is this a good approach or maybe there is something already ready and I
>> shouldn't bother because I am totally missing the point?
> You should increase the partitions in "erase block size units". Recent NAND
> flashes are using 128 kiB erase size units. So, increasing by 256 kiB will
> give you two spare "erase block size units".
>
> jbe
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
