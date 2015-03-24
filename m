Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaKEd-0004Fq-Ds
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 08:30:51 +0000
Received: by wibg7 with SMTP id g7so48593775wib.1
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2015 01:30:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150324063015.GR9742@pengutronix.de>
References: <1427123853-26983-1-git-send-email-t.gamez@phytec.de>
 <20150324063015.GR9742@pengutronix.de>
Date: Tue, 24 Mar 2015 09:30:29 +0100
Message-ID: <CAOpc7mEFF7R=dhjS8YONJgLAH_zM+AZrYjZX2xhEX2Dbuk+owg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH] AM335x: MLO image issue
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Sascha,

AFAIK he implemented two patches from Torvald's linux kernel git tree:

* af958a38a60c7ca3d8a39c918c1baa2ff7b6b233 removes a broken
check-for-integer-overflow method
* 72cf90124e87d975d0b2114d930808c58b4c05e4 add's a new
make-sure-integers-dont-overflow logic, which is also marked as "put
it into stable kernels"

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
