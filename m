Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMsei-000186-Ri
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 09:07:35 +0000
Received: by mail-wm0-x22b.google.com with SMTP id x70so72929128wme.0
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 02:07:12 -0700 (PDT)
References: <20170615111420.5318-1-aleksander@aleksander.es>
 <20170619064618.jxlrucmy5fd4ikbs@pengutronix.de>
From: Aleksander Morgado <aleksander@aleksander.es>
Message-ID: <437cc444-41fc-0cb4-57ce-8fdb6b0af74e@aleksander.es>
Date: Mon, 19 Jun 2017 11:07:09 +0200
MIME-Version: 1.0
In-Reply-To: <20170619064618.jxlrucmy5fd4ikbs@pengutronix.de>
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
Subject: Re: [PATCH 00/16] RATP logic fixes and improvements
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hey,

On 19/06/17 08:46, Sascha Hauer wrote:
>> I went through the RFC916 and ended up preparing a set of fixes and improvements for the RATP logic in barebox.
>> Let me know what you think.
> As far as I can say the patches look good. It's quite a while since I
> last looked at the RATP code, so I can't really judge. To which extent
> are the patches tested? Have you explicitly tested for the corner cases
> you fix in each patch? You probably have tested against your new
> library. Have you also tested against the python implementation?

I did test against bbremote, and also did several fixes there as well. I haven't tested against the "ratp filesystem support" feature though, maybe I should do that as well. 

Regarding which corner cases are tested, well, some of them apply to code paths that I believe wouldn't really apply to barebox right now (e.g. barebox doing active open at the same time as bbremote doing active open), so that's hard to test. I could go one by one over each patch and try to provide logs before/after applying the patch, how about that?

BTW; how would you debug barebox (e.g. get the debug messages generated) while testing the RATP link over the TTY? Right now I validated the barebox behavior just by looking at which RATP messages were returned to me.

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
