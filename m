Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out6.bezeqint.net ([192.115.188.206])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R3RmL-0007O8-8G
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 12:07:54 +0000
Message-ID: <4E6F4774.5010800@wellsense-tech.com>
Date: Tue, 13 Sep 2011 15:07:16 +0300
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
References: <4E6E0F25.7060403@wellsense-tech.com>
	<4E6F1B57.7060507@wellsense-tech.com>
	<4E6F1F11.6070206@pengutronix.de>
	<4E6F270A.2040902@wellsense-tech.com>
	<4E6F4604.7040501@pengutronix.de>
In-Reply-To: <4E6F4604.7040501@pengutronix.de>
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
Subject: Re: bareboxenv usage
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 09/13/11 15:01, Marc Kleine-Budde wrote:
> On 09/13/2011 11:48 AM, Boaz Ben-David wrote:
>> On 09/13/11 12:14, Marc Kleine-Budde wrote:
>>> On 09/13/2011 10:59 AM, Boaz Ben-David wrote:
>>>> All I am asking is: do I need to use /dev/mtdblock or /dev/mtd when
>>>> loading and saving envs
>>> neither nor - loadenv&   saveenv are not bad block aware. In barebox you
>>> use the .bb devices, which are bad block are, under linux use nandwrite
>>> + nanddump to write or read data from the nand into a file. Then use
>>> loadenv/saveenv.
>>>
>>> cheers, Marc
>>>
>> Hi,
>>
>>
>> Thanks for the reply.
>>
>> First question, please tell me if these sequences are correct:
> basically yes....but
>
>> In Linux:
>>
>> - Read:
>>
>> 1.nanddump from the mtd device to a file.
> read the nanddump help text, you need to skip bad blocks
>
>> 2.bareboxenv -l the file dumped.
>>
>> -Write:
>>
>> 1.bareboxenv -s from source directory to a file
>>
>> 2.nandwrite that file to the mtd device.
> use padding
>
> cheers, Marc
>

Hi,


This was psuedo command line (:

Of course I will use padding and skip bb...


Thanks,


Boaz.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
