Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp69.ord1c.emailsrvr.com ([108.166.43.69])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c59gW-0000Ai-Td
 for barebox@lists.infradead.org; Fri, 11 Nov 2016 11:07:55 +0000
Received: from smtp1.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp1.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id 517FC200FC
 for <barebox@lists.infradead.org>; Fri, 11 Nov 2016 06:07:29 -0500 (EST)
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 14C02200EB
 for <barebox@lists.infradead.org>; Fri, 11 Nov 2016 06:07:28 -0500 (EST)
References: <20161111092941.44lmfsowkldkbhis@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <46139469-bb50-505d-4486-2336f8bf6b3e@mev.co.uk>
Date: Fri, 11 Nov 2016 11:07:27 +0000
MIME-Version: 1.0
In-Reply-To: <20161111092941.44lmfsowkldkbhis@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: v2016.11.0
To: barebox@lists.infradead.org

On 11/11/16 09:29, Sascha Hauer wrote:
> Hi All,
>
> We have a November Release.
>
> This is the first release which contains bootchooser, a framework which
> simplifies and generalizes redundant boot scenarios.
> Other than that we can now rename UBI volumes. Also there are improvemts
> in running the UBI background thread which finally means that barebox
> can write a fastmap on freshly formatted UBI devices. Previously barebox
> was often not able to find an anchor PEB for the fastmap.
> Another change worth noting is that the decision if defenv-1 or defenv-2
> should be used can now be selected in Kconfig. It is no longer a board
> decision.
> As usual several fixes went in all over the place.
>
> Sascha

Thanks!  I am wondering about the git repository - the "v2016.11.0" tag 
exists, but seems to be 6 commits above the top of the "master" branch.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
