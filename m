Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khUii-0008D2-GA
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 09:34:50 +0000
MIME-Version: 1.0
Date: Tue, 24 Nov 2020 10:34:42 +0100
From: robin <robin@protonic.nl>
In-Reply-To: <20201124091201.GF14718@pengutronix.de>
References: <20201123163805.11164-1-s.hauer@pengutronix.de>
 <7cc581eb0bfbabe3d8d4d0213d4beebc@protonic.nl>
 <708d692d8f1de83ed7372d7cf2381e16@protonic.nl>
 <20201124091201.GF14718@pengutronix.de>
Message-ID: <441de0a688ac33d0f8099f54be8deff8@protonic.nl>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: robin@protonic.nl
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX: HABv4: Improve HAB event printing
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On 2020-11-24 10:12, Sascha Hauer wrote:
> On Tue, Nov 24, 2020 at 09:32:14AM +0100, robin wrote:
>> Hi Sascha,
>> 
>> On 2020-11-24 08:57, robin wrote:
>> > Hi Sascha,
>> >
>> > On 2020-11-23 17:38, Sascha Hauer wrote:
>> > > Instead of using a fixed sized buffer for the report_event function,
>> > > let's call it two times, once with a NULL pointer to get the size of
>> > > the
>> > > event and a second time with a buffer of that size.
>> > > Also, instead of separating the events into warning and error type,
>> > > iterate over all events in one single loop. This helps to get the
>> > > events
>> > > in the order they occured which probably helps the reader to make more
>> > > sense of them.
>> > >
>> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> >
>> > Even better!
>> >
>> > Is it worth mentioning that this also fixes the unjustified
>> > 'Recompile with larger event data buffer' error?
>> >
>> > Acked-by: Robin van der Gracht
>> 
>> I just noticed your previous email. I'll test this today.
> 
> Rouven just told me that testing this is actually very simple. I was 
> was
> afraid I had to bring up a full HAB stack, but actually all I had to do
> is to enable HAB in barebox, start it on a non HAB enabled board and be
> done.
> 
> Here's the output which looks sane to me:
> 
> HABv4: Status: Operation failed (0x33)
> HABv4: Config: Non-secure IC (0xf0)
> HABv4: State: Non-secure state (0x66)
> HABv4: -------- HAB Event 0 --------
> HABv4: event data:
> HABv4:  db 00 08 41  33 22 0a 00
> 
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid address: access denied (0x22)
> HABv4: Context: Logged in hab_rvt.authenticate_image() (0x0a)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: -------- HAB Event 1 --------
> HABv4: event data:
> HABv4:  db 00 14 41  33 0c a0 00
> HABv4:  00 00 00 00  10 00 04 00
> HABv4:  00 00 00 20
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid assertion (0x0c)
> HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: -------- HAB Event 2 --------
> HABv4: event data:
> HABv4:  db 00 14 41  33 0c a0 00
> HABv4:  00 00 00 00  10 00 04 2c
> HABv4:  00 00 03 00
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid assertion (0x0c)
> HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: -------- HAB Event 3 --------
> HABv4: event data:
> HABv4:  db 00 14 41  33 0c a0 00
> HABv4:  00 00 00 00  10 00 04 20
> HABv4:  00 00 00 01
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid assertion (0x0c)
> HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
> HABv4: Engine: Select first compatible engine (0x00)
> HABv4: -------- HAB Event 4 --------
> HABv4: event data:
> HABv4:  db 00 14 41  33 0c a0 00
> HABv4:  00 00 00 00  10 00 10 00
> HABv4:  00 00 00 04
> HABv4: Status: Operation failed (0x33)
> HABv4: Reason: Invalid assertion (0x0c)
> HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
> HABv4: Engine: Select first compatible engine (0x00)
> 
> Anyway, it won't hurt when you give it a test as well.

I would have done the same test. So I think its OK like this. I just
realized I only have access to locked chips atm. so you testing this
is great :P.

I did run this on a locked unit (just to be sure) but no issues there.

Robin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
