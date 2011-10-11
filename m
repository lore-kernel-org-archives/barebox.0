Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out4.bezeqint.net ([192.115.188.213])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RDWJY-0002ts-Kf
	for barebox@lists.infradead.org; Tue, 11 Oct 2011 06:59:49 +0000
Message-ID: <4E93E95D.7040001@wellsense-tech.com>
Date: Tue, 11 Oct 2011 08:59:41 +0200
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
References: <201103081635.29082.marc@cpdesign.com.au>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F8A4@SBS2008.wellsense.local>
	<20110308071058.GB22012@jasper.tkos.co.il>
	<4DE1E2FA.1090907@wellsense-tech.com>
	<20110529063350.GB32378@jasper.tkos.co.il>
	<4DE1F253.4050504@wellsense-tech.com>
	<20110529072803.GE32378@jasper.tkos.co.il>
	<4E9148E5.6070102@wellsense-tech.com>
	<20111010044451.GA28707@sapphire.tkos.co.il>
	<4E93E4F4.8040604@wellsense-tech.com>
	<20111011065419.GL18273@pengutronix.de>
	<4E93E8CB.1040504@wellsense-tech.com>
In-Reply-To: <4E93E8CB.1040504@wellsense-tech.com>
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
Subject: Re: iMX35 3stack framebuffer problem
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 10/11/11 08:57, Boaz Ben-David wrote:
> On 10/11/11 08:54, Robert Schwebel wrote:
>> On Tue, Oct 11, 2011 at 08:40:52AM +0200, Boaz Ben-David wrote:
>>> Yes, I didn't mention it, but I tried your suggestion. It works
>>> (meaning there's no flicker) but
>>>
>>> the problem is that the screen is blank for about 8 seconds before I
>>> have control again to init it.
>>>
>>> People here said they prefer flicker over 8 seconds of blank time...
>> This is why we have a framebuffer / video driver framework in Barebox.
>> We do not have a driver for MX35 yet, but that could of course be
>> changed.
>>
>> On the other hand, I'm wondering why it needs 8 s until you see
>> something on the Linux side. We have an MX35 system here which runs at
>> 532 MHz, and it needs about 1 s from power-on into Linux userspace, so
>> we decided to show the splash screen from there.
>>
>> rsc

The kernel size is almost 5MB (it includes an initramfs).

8 seconds are from the time I call "bootm uImage" and until the init 
script in the initramfs kicks in.

If I can seriously shorten this time I will be glad to know, maybe 
there's something I missed.

Any input will be appreciated.


Thanks,

Boaz.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
