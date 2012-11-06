Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVq6n-0004PM-SK
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 20:50:56 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org> <87mwyvvs7o.fsf@free.fr>
 <20121105182544.GB25679@game.jcrosoft.org> <878vafvq9b.fsf@free.fr>
 <20121105194907.GC25679@game.jcrosoft.org> <871ug7visp.fsf@free.fr>
 <20121106073458.GD25679@game.jcrosoft.org>
Date: Tue, 06 Nov 2012 21:50:39 +0100
In-Reply-To: <20121106073458.GD25679@game.jcrosoft.org> (Jean-Christophe
 PLAGNIOL-VILLARD's message of "Tue, 6 Nov 2012 08:34:58 +0100")
Message-ID: <87wqxytq00.fsf@free.fr>
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

> On 22:31 Mon 05 Nov     , Robert Jarzmik wrote:
>> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
>> And how do you choose the alternative UART ? loady is not provided such a
>> parameter in its new form.
> by it's name cs1 as example

>> Now if you want, I can add it. And if I add it, I'll add a timeout also to the
>> xy_flush() function ...
> yes please

>> >> > can you put the v3 on a tree somewhere so I can pull it
>> >> I'll try. I have no external git I can push to. If you have a hint ...
>> > https://git.wiki.kernel.org/index.php/GitHosting
>> Ah yes, ok. I'll send you the URL once I've amended the patches, along the
>> patch mails.
> personnaly for at91 we use github tks
Here is my candidate for v3 :
     git fetch git@github.com:rjarzmik/barebox.git xymodem

If you could test the "loady -t cs1", as I don't happen to have multiple
consoles ...
And Antony, if you have a little bit of time, would you test it also, as that
endianess bug drove me mad.

If it does work, I'll send the v3 of the patchset.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
