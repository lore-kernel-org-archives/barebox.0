Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f42.google.com ([209.85.214.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7tpP-0004zL-9C
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 20:30:15 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk7so3241211bkc.15
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 12:30:10 -0800 (PST)
Date: Tue, 19 Feb 2013 21:30:59 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130219202941.GA20171@x61s.8.8.8.8>
References: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
 <1361135101-994-3-git-send-email-alex.aring@gmail.com>
 <20130219193339.GF25672@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130219193339.GF25672@pengutronix.de>
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
Subject: Re: [PATCH 2/2] fs: add pread and pwrite functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Tue, Feb 19, 2013 at 08:33:39PM +0100, Sascha Hauer wrote:
> Hi Alexander,
> 
> On Sun, Feb 17, 2013 at 10:05:01PM +0100, Alexander Aring wrote:
> > Add pread and pwrite functions.
> > 
> > Split read and write functions to save some space.
> > The functions pread and pwrite saves and sets the file
> > position to a given offset and restore them afterwards.
> > 
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> 
> This currently breaks compilation of the nandtest command. We have two
> options: Either rename pread/pwrite functions in the nandtest command or
> just drop the static versions in the nandtest command.
> 
> Sascha
> 

Yes, I know... I have already Patches for this. I punish myself, because
it were better to add this changes into this patch series.

First patch series v1 has them include.
I will resend them now.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
