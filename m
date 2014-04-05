Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWKZS-0006oi-QU
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 06:59:19 +0000
Received: by mail-wg0-f46.google.com with SMTP id b13so4375302wgh.17
 for <barebox@lists.infradead.org>; Fri, 04 Apr 2014 23:58:55 -0700 (PDT)
Date: Sat, 5 Apr 2014 08:58:49 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140405065848.GA1413@omega.Speedport_W_921V_1_24_000>
References: <53316480.2030103@reverze.net>
 <20140405050143.GA29442@omega.Speedport_W_921V_1_24_000>
 <CD50FFA5-8D53-4BD0-BC9A-131387267474@reverze.net>
 <20140405064541.GA658@omega.Speedport_W_921V_1_24_000>
 <E97972E6-F8B1-438A-8BEE-F48CF896908F@reverze.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E97972E6-F8B1-438A-8BEE-F48CF896908F@reverze.net>
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
Subject: Re: [PATCH 2/3] x86: Add support for IDE on the legacy I/O ports
To: Michel Stam <michel@reverze.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, Apr 05, 2014 at 08:56:25AM +0200, Michel Stam wrote:
> Hello Alex,
> 
> I think we misunderstood eachother; I was talking about space changes in .c files caused by an editor. send-email came after the editing. 
> 
> Reading back I think you were talking about directly editing patches, which I did not do. 
> 
> The patches as they were sent to this list are the immediate result/output of the git send-email command, if theres inconsistencies in the patch file itself I have no explanation for that.

ok, but then I don't unerstand why it is " +#..." instead "+ #..." the +
comming from diff and should always at the beginnen of line.

I think we should stop this discussion now. Nevertheless I saw there is
already a v2. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
