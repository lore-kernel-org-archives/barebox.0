Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfyIB-0007zi-Mh
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 19:36:32 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so3342255lbo.36
 for <barebox@lists.infradead.org>; Tue, 04 Dec 2012 11:36:29 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1212041429450.3234@oneiric>
References: <alpine.DEB.2.02.1212041048580.29673@oneiric>
 <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
 <alpine.DEB.2.02.1212041429450.3234@oneiric>
Date: Tue, 4 Dec 2012 13:36:29 -0600
Message-ID: <CAGo_u6p3R837Kqmt+EqfXjc4Lger6LK4JNfR6Crtd=s9ZzE7_A@mail.gmail.com>
From: "menon.nishanth@gmail.com" <menon.nishanth@gmail.com>
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
Subject: Re: lots of inaccurate references to "FileName: include/asm-arm ..."
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi,
On Tue, Dec 4, 2012 at 1:30 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> the obvious cleanup is to just delete all those "FileName" lines.
> it *is* useful info to know where a file came from in the linux
> kernel, i would definitely leave that in.  but (as was explained to me
> recently) it's pointless to have a file contain its own alleged name,
> especially if files can be moved.
>
>   so unless those "FileName" lines have some value, i would just
> remove all of them.
Sounds good to me.
Regards,
Nishanth Menon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
