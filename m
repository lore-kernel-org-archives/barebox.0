Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wugnz-0000FA-CL
 for barebox@lists.infradead.org; Wed, 11 Jun 2014 11:35:01 +0000
Message-ID: <53983ED3.7070401@celad.com>
Date: Wed, 11 Jun 2014 13:34:43 +0200
From: Herve Codina <herve.codina@celad.com>
MIME-Version: 1.0
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
Subject: dev_param_int_ro
To: barebox@lists.infradead.org

Hi,

We can have parameters based on long long int.
For instance :
dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");

This is not working because dev_add_param_int_ro expect int as value and
calling asprintf using "%llu" format and int parameter does not give
expected result.

We need to add a specific dev_add_param_int_ro function for long long.
What function name should be used ?
- dev_add_param_intll_ro
- dev_add_param_llint_ro
- dev_add_param_ll_ro

I can do this small patch according to choosen function name.

Best regards,
Herve



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
