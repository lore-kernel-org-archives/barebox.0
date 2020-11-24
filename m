Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTkE-00044r-W6
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:32:16 +0000
MIME-Version: 1.0
Date: Tue, 24 Nov 2020 09:32:14 +0100
From: robin <robin@protonic.nl>
In-Reply-To: <7cc581eb0bfbabe3d8d4d0213d4beebc@protonic.nl>
References: <20201123163805.11164-1-s.hauer@pengutronix.de>
 <7cc581eb0bfbabe3d8d4d0213d4beebc@protonic.nl>
Message-ID: <708d692d8f1de83ed7372d7cf2381e16@protonic.nl>
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
To: robin@protonic.nl
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On 2020-11-24 08:57, robin wrote:
> Hi Sascha,
> 
> On 2020-11-23 17:38, Sascha Hauer wrote:
>> Instead of using a fixed sized buffer for the report_event function,
>> let's call it two times, once with a NULL pointer to get the size of 
>> the
>> event and a second time with a buffer of that size.
>> Also, instead of separating the events into warning and error type,
>> iterate over all events in one single loop. This helps to get the 
>> events
>> in the order they occured which probably helps the reader to make more
>> sense of them.
>> 
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Even better!
> 
> Is it worth mentioning that this also fixes the unjustified
> 'Recompile with larger event data buffer' error?
> 
> Acked-by: Robin van der Gracht

I just noticed your previous email. I'll test this today.

Regards Robin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
