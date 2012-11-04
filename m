Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TV5F0-0000H2-SV
 for barebox@lists.infradead.org; Sun, 04 Nov 2012 18:48:15 +0000
Received: from beldin (unknown [IPv6:2a01:e35:2f37:a360:bdc2:bfed:6e53:2b33])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 358549400A4
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2012 19:48:08 +0100 (CET)
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87zk2xuuds.fsf@free.fr>
Date: Sun, 04 Nov 2012 19:48:07 +0100
In-Reply-To: <87zk2xuuds.fsf@free.fr> (Robert Jarzmik's message of "Sun, 04
 Nov 2012 18:53:51 +0100")
Message-ID: <87vcdlurvc.fsf@free.fr>
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
Subject: Re: Ramfs and NULL pointer
To: barebox@lists.infradead.org

Robert Jarzmik <robert.jarzmik@free.fr> writes:

> Hi there,
>
> Lately, I see null pointer dereferences in barebox.
> I traced the culprit to ramfs ...

Ah and if I take back v2012.09.0, the problem disappears. 
I'm not fully in the mood for a bisection of 544 commits ... any idea ?

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
