Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.iad3a.emailsrvr.com ([173.203.187.85])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDXyk-0002Xd-BW
 for barebox@lists.infradead.org; Wed, 24 May 2017 15:13:41 +0000
References: <20170524073627.dqfb7v7td3utbcos@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <c7e87a03-b1a7-209c-12a0-f984b2553754@mev.co.uk>
Date: Wed, 24 May 2017 16:13:13 +0100
MIME-Version: 1.0
In-Reply-To: <20170524073627.dqfb7v7td3utbcos@pengutronix.de>
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
Subject: Re: Stable branches resurrected
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

On 24/05/17 08:36, Sascha Hauer wrote:
> Hi All,
>
> v2017.05.0 contains some nasty bugs. This led me to the idea to
> resurrect the stable branches. I created stable/v2017.05 and also
> released v2017.05.1. Please update to this one if you are using
> v2017.05.0.
>
> Experience shows that very few people semm to test the master branch,
> but that I get bug reports relatively fast after a release. I'll try and
> collect at least the bugfixes for the current release in a stable
> branch. I'm not yet sure how long I maintain each stable branch though,
> probably not too long to keep people motivated to update ;)
>
> If you want to have a patch in a stable branch, please tell me so to
> keep me reminded that we have these branches.

The only one I can think of at the moment for the 2017.05 series is 
commit eaf884ba55def055fd81ff3291a1a534fc8bd8f9 ("nv: Fix setting of 
nv.dev.<devname>.<param> variables").

Best regards,
Ian.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
