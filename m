Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x234.google.com ([2607:f8b0:4002:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axyuS-0000Yj-GA
 for barebox@lists.infradead.org; Wed, 04 May 2016 15:40:21 +0000
Received: by mail-yw0-x234.google.com with SMTP id t10so99728333ywa.0
 for <barebox@lists.infradead.org>; Wed, 04 May 2016 08:39:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160503054654.GG19714@pengutronix.de>
References: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
 <20160503054654.GG19714@pengutronix.de>
Date: Wed, 4 May 2016 08:39:58 -0700
Message-ID: <CAHQ1cqFtBiTxTOFic9r13yTg4oHcnoAJg50n2W_8RMzHSO=4cQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] AIODEV subsystem
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, May 2, 2016 at 10:46 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Apr 29, 2016 at 10:24:00AM -0700, Andrey Smirnov wrote:
>> Hello everone,
>>
>> This series of patches is a combined version of "hwmon" and "iodev"
>> proposals, submitted several months ago by me and Sascha respectively.
>>
>> The main purpose of this subsystem is to provde means of exposing
>> different analog sensors(temperature, voltage, etc.) or, potentially,
>> "actuators"(e.g. DACs) in a uniformed fashion.
>>
>> This series introduces the subsystem itself, a helper command to
>> display values of all registersd sensors ("hwmon"), and a two drivers
>> leveraging the AIODEV subsystem API (LM75 and TEMPMON).
>>
>> Additionaly, due to TEMPMON driver's need to obtain calibraion
>> information from OCOTP, this patchset adds Steffen Trumtrar's port of
>> NVMEM subsytem from Linux kernel.
>>
>> Sascha, you didn't like "iodev" as a name, so I changed it and I hope
>> you like this one better :-)
>
> Yes, I do. It's more unique ;)
>
> So, the 'A' is for Analog, right?


Correct, 'A' is indeed stands for "analog".

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
