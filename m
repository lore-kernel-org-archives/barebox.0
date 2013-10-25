Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZfvS-0002Zc-Dd
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 11:51:35 +0000
Received: by mail-ea0-f180.google.com with SMTP id l9so451433eaj.11
 for <barebox@lists.infradead.org>; Fri, 25 Oct 2013 04:51:12 -0700 (PDT)
Date: Fri, 25 Oct 2013 13:51:03 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131025115103.GA87777@deflower.internal>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
 <1382646226-24871-2-git-send-email-a.heider@gmail.com>
 <20131025105827.GE26639@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131025105827.GE26639@ns203013.ovh.net>
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
Subject: Re: [PATCH 1/6] fb: add a stride value to struct fb_info
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 25, 2013 at 12:58:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:23 Thu 24 Oct     , Andre Heider wrote:
> > Add support for framebuffers with noncontiguous horizontal lines.
> > 
> > Video drivers can set this value if the hardware requires it.
> > In case a driver does not set it, the current value of
> > xres * (bpp / 8) is used instead.
> 
> we never use this in linux ever
> 
> so do not do this in barebox either

I assume you mean the provided fallback value?
And consequently converting all drivers to set the introduced stride
value themselves?

In that case, I considered doing that. I just don't have the hardware to
test all the drivers that's going to touch.

Thanks,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
