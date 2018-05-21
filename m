Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKs2K-0005MN-17
 for barebox@lists.infradead.org; Mon, 21 May 2018 21:08:09 +0000
Received: by mail-lf0-x242.google.com with SMTP id r2-v6so25949900lff.4
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 14:07:57 -0700 (PDT)
Date: Tue, 22 May 2018 00:07:53 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180521210751.4zqpv4sagwaw6kvw@sheep>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <CAHQ1cqEYc51YSOyGS8ZsFSCep3nb7t0X2B_z=1gOtiFc2GAP6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEYc51YSOyGS8ZsFSCep3nb7t0X2B_z=1gOtiFc2GAP6A@mail.gmail.com>
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
Subject: Re: [PATCH v2 00/12] various fixes for MIPS64
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi, Andrey,

On Mon, May 21, 2018 at 11:39:26AM -0700, Andrey Smirnov wrote:
> On Mon, May 21, 2018 at 4:54 AM, Peter Mamonov <pmamonov@gmail.com> wrote:
> > Hi,
> >
> > Here is a second revision of the patchset which fixes various issues with 64 bit
> > barebox, primarily MIPS related. IMHO all of these patches are ready for
> > application.
> >
> 
> Don't  think I've seen any comments on:
> http://lists.infradead.org/pipermail/barebox/2018-May/032985.html
> Right now it's not clear if that thread just slipped though the cracks
> or you decided to keep the code as is. Latter is fine with me, I just
> want to make sure it is not the former.

Sorry for lack of feedback on your proposal. Your solution is actually the 
proper one. Yet I've decided to keep this change trivial for two reasons:
 
 - to make it easier for Sascha to accept it (i.e. no change in driver logic, 
 just fix the problem)

 - to make this patch self explaining, since it demonstrates the source of the 
 problem: get_drv_data(..., &data->type) overwrites memory beyond data->type 
 member due to mismatch of sizeof(enum pca_type) and sizeof(void *); using 
 argument of a proper type and size fixes the problem.


Regards,
Peter

> 
> Thanks,
> Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
