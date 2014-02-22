Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHISF-0003sB-Ug
 for barebox@lists.infradead.org; Sat, 22 Feb 2014 19:41:44 +0000
Received: by mail-ee0-f52.google.com with SMTP id c41so1414763eek.39
 for <barebox@lists.infradead.org>; Sat, 22 Feb 2014 11:41:04 -0800 (PST)
Date: Sat, 22 Feb 2014 20:40:58 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140222194056.GA4455@omega>
References: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
 <1392904169-786-3-git-send-email-s.hauer@pengutronix.de>
 <20140220151601.GA1171@x61s.Speedport_W_921V_1_24_000>
 <20140222182851.GL17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140222182851.GL17250@pengutronix.de>
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
Subject: Re: [PATCH 3/4] environment: Add function to load envfs from buffer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Feb 22, 2014 at 07:28:51PM +0100, Sascha Hauer wrote:
> Hi Alex,
> 
> On Thu, Feb 20, 2014 at 04:16:05PM +0100, Alexander Aring wrote:
> > Hi Sascha,
> > 
> > > -		printf("Open %s %s\n", filename, errno_str());
> > > -		return -1;
> > > +	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
> > > +		printf("envfs: wrong magic\n");
> > > +		return -EIO;
> > 
> > In this case only on big endians machines:
> > if (super->magic != ENVFS_32(ENVFS_MAGIC))
> > 
> > is faster than:
> > if (ENVFS_32(super->magic) != ENVFS_MAGIC)
> > 
> > It's save (I suppose) ca. 4 instruktions... so it doesn't matter
> > to change it.
> 
> You're right that it's slightly more efficient. I think that it's more
> obviously correct converting the 'foreign' value to host order, so I
> think I'll keep my version.

thanks for your answer. Yeah, maybe I am hanging a little bit too much
on netdev mailinglist where all netdevs checks on something like this
because it's mostly in some atomic context. This need to be fast and
not beautiful in a kind of human thinking. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
