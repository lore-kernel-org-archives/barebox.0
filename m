Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wyy6C-0004pt-Fz
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 06:51:29 +0000
Received: by mail-wi0-f172.google.com with SMTP id hi2so3507614wib.17
 for <barebox@lists.infradead.org>; Sun, 22 Jun 2014 23:51:06 -0700 (PDT)
Date: Mon, 23 Jun 2014 08:51:05 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140623065102.GB9990@omega>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
 <53A74E95.40403@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53A74E95.40403@gmail.com>
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
Subject: Re: [RFC 1/2] kirkwood: add support for booting via oftree probe
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jun 22, 2014 at 11:45:57PM +0200, Sebastian Hesselbarth wrote:
> On 06/22/2014 10:34 PM, Alexander Aring wrote:
> > This patch initialize memory only if we boot a kirkwood arch with
> > device-tree probing. Otherwise some devices like timer or uart will
> > be probed twice.
> > 
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> > I don't know if this is right. The guruplug is the other kirkwood platform
> > but don't have devictree support.
> 
> Alexander,
> 
> I'd rather remove non-DT booting for kirkwood completely. I have patches
> ready somewhere. Let me sort them out tomorrow.
> 

Ok, I'll be waiting. Thanks.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
