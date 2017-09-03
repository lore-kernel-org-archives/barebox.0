Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1doZdu-0002dx-CJ
 for barebox@lists.infradead.org; Sun, 03 Sep 2017 18:29:13 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id BCF8E20CF6
 for <barebox@lists.infradead.org>; Sun,  3 Sep 2017 20:28:45 +0200 (CEST)
References: <626198c2-50fc-2e86-1abd-8a92cd2d448e@posteo.de>
 <20170903154544.08f72353310a25eafa3c341c@gmail.com>
From: Dennis Menschel <menschel-d@posteo.de>
Message-ID: <e302a697-df8b-4719-0370-81483624905f@posteo.de>
Date: Sun, 3 Sep 2017 20:28:43 +0200
MIME-Version: 1.0
In-Reply-To: <20170903154544.08f72353310a25eafa3c341c@gmail.com>
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
Subject: Re: [BUG] TFTP: No access to subdirectories
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am 03.09.2017 um 14:45 schrieb Antony Pavlov:
> On Sun, 3 Sep 2017 10:49:21 +0200
> Dennis Menschel <menschel-d@posteo.de> wrote:
> 
>> Hello,
>>
>> I've noticed that since barebox version 2017.07.0, accessing files via TFTP only works for files that are located in the root directory of the TFTP server.
>> Accessing files that reside in subdirectories doesn't work anymore.
>> The bug affects both access via /mnt/tftp/ and via the tftp shell command.
>>
>> I've tested the following versions of barebox:
>>
>> - 2017.05.0: works
>> - 2017.06.0: works
>> - 2017.07.0: doesn't work anymore
>> - 2017.08.0: doesn't work anymore
>>
>> Below follows the test scenario I've used to reproduce the bug:
>>
>>
>> Scenario
>> ========
>>
>> For the server, I'm using a Raspberry Pi 2 with:
>> - a DHCP server (isc-dhcp-server) and
>> - a TFTP server (tftpd-hpa).
> 
> I have seen the same problem, please see this message:
> 
> http://lists.infradead.org/pipermail/barebox/2017-July/030587.html
> 
> I use tftpd-hpa too.
> 
> I want to note again that reverting 944bf0e1 ('fixup! fs: Implement links to directories') and
> a602bebc ('fs: Implement links to directories') fixes the problem.
> 
>> [...]

Thanks for the info, Antony!

I must admit that I was only searching the mailing list archive for the
subject concerning "bug" or "tftp", but not the content of the residual
mails before I wrote my bug report.

Good to see that you've already found that commits that cause the
problem. Hopefully it will be fixed in one of the next releases.

Best regards,
Dennis Menschel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
