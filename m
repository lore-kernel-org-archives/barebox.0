Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anLTi-000833-VC
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 07:32:47 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1anLTK-0003xK-7A
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 09:32:22 +0200
Received: from a81-14-231-195.net-htp.de ([81.14.231.195])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Tue, 05 Apr 2016 09:32:22 +0200
Received: from embedded24 by a81-14-231-195.net-htp.de with local (Gmexim 0.1
 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Tue, 05 Apr 2016 09:32:22 +0200
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Date: Tue, 5 Apr 2016 07:32:16 +0000 (UTC)
Message-ID: <loom.20160405T092322-216@post.gmane.org>
References: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
 <87ziterckj.fsf@gmail.com>
 <CABDcavZ2HPoPqCJ9Wn_Uu7fapKcqdHEPc9jDjnM7xDvKJ5ahbg@mail.gmail.com>
 <20160404063833.GC9102@pengutronix.de>
 <CABDcavYVyFZu_o=25bTs3e2q-rGGLn8ZYbivg_PTxjxkVt62_A@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: Scrolling issues in edit command
To: barebox@lists.infradead.org

Guillermo Rodriguez Garcia <guille.rodriguez@...> writes:
> 
> That's a very good question. I just tried to paste this text in
> barebox's command line:
> 
> Lorem Ipsum is simply dummy text of the printing and typesetting industry.
> 
> It works perfectly. However I then tried to paste the very same text
> in a "edit" window. Every time, the following is pasted:
> 
> Lois simply dummy text of the printing and typesetting industry.
> 
> That's exactly 10 characters missing after the first two.
> 
> What could be causing this and then only in the "edit" command, but
> not in the command line?
> 
> Any other hints ?
> 
Hello,
I have had a similar problem (missing characters) with a SAMV71Xplained
board and NuttX OS. In my case this problem was caused by a disabled
instruction cache. Could you please check if your caches are enabled?

Best regards,
 Rolf




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
