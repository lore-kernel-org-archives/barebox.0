Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVUGK-0007R0-VR
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 21:31:19 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org> <87mwyvvs7o.fsf@free.fr>
 <20121105182544.GB25679@game.jcrosoft.org> <878vafvq9b.fsf@free.fr>
 <20121105194907.GC25679@game.jcrosoft.org>
Date: Mon, 05 Nov 2012 22:31:02 +0100
In-Reply-To: <20121105194907.GC25679@game.jcrosoft.org> (Jean-Christophe
 PLAGNIOL-VILLARD's message of "Mon, 5 Nov 2012 20:49:07 +0100")
Message-ID: <871ug7visp.fsf@free.fr>
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

>> You can't, how could you ? Your console is overwhelmed by garbage input, what
>> could you possibly do to interrupt it apart from cutting down the sender ?
> this is an issue if we have more than one we need be able to do so and I may
> want to use it on an other console_device not necessarely the current one
>
> I have often hw that have more than one uart
And how do you choose the alternative UART ? loady is not provided such a
parameter in its new form.
Now if you want, I can add it. And if I add it, I'll add a timeout also to the
xy_flush() function ...

>> > can you put the v3 on a tree somewhere so I can pull it
>> I'll try. I have no external git I can push to. If you have a hint ...
> https://git.wiki.kernel.org/index.php/GitHosting
Ah yes, ok. I'll send you the URL once I've amended the patches, along the
patch mails.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
