Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVRkK-0000VS-Gv
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 18:50:06 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org> <87mwyvvs7o.fsf@free.fr>
 <20121105182544.GB25679@game.jcrosoft.org>
Date: Mon, 05 Nov 2012 19:49:52 +0100
In-Reply-To: <20121105182544.GB25679@game.jcrosoft.org> (Jean-Christophe
 PLAGNIOL-VILLARD's message of "Mon, 5 Nov 2012 19:25:44 +0100")
Message-ID: <878vafvq9b.fsf@free.fr>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] commands: change Y-Modem implementation
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> On 19:07 Mon 05 Nov     , Robert Jarzmik wrote:
>> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
>> No timeout indeed, on purpose.
>> 
>> The short explanation is that in a purge situation, all incoming data must be
>> flushed, regardless of the time it takes.
>> 
>> The long explantion is :
>>  - suppose the while(cdev->tstc(cdev)) takes a lot of time
>>  - this implies that :
>>    => the sender is sending data as fast as the reader can consume (not quite
>>    probable, but why not ...)
>>    => the sender has gone crazy, as in *-Modem protocol when this function is
>>    called, no more than 1029 bytes can be sent by a *sane* sender
>> 
>> So let's take as granted that the sender has gone crazy (or hardware is brain
>> dead). What will happen if I place a timeout here ?
>>  - first, I'll obviously get out of xy_flush()
>>  - then, as I receive garbage, xy_handle() will exit with either -EBADMSG or
>>  -EILSEQ. So far so good.
>>  - then the loady command will finish on error. Still good.
>>  - then the input console will take over, and execute all the garbage sent to
>>  it.
>>    This is definitely something we don't want. Imagine in the garbage you have
>>    something like "erase /dev/mtd0" ... Therefore, no timeout.
> my issue is how can I interrupt it from barebox
You can't, how could you ? Your console is overwhelmed by garbage input, what
could you possibly do to interrupt it apart from cutting down the sender ?

> can you put the v3 on a tree somewhere so I can pull it
I'll try. I have no external git I can push to. If you have a hint ...

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
